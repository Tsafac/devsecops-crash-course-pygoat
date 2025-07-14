
FROM python:3.11-slim-bookworm

# Set work directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install --no-install-recommends -y dnsutils libpq-dev python3-dev && \
    rm -rf /var/lib/apt/lists/*


# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy full project
COPY . .

# Run migrations
RUN python manage.py migrate

# Expose port
EXPOSE 8000

# Run the app with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "4", "pygoat.wsgi"]
