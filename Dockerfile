FROM python:3.11-slim-bookworm

WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install --no-install-recommends -y gcc dnsutils libpq-dev python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Migrate 
RUN python manage.py migrate

# Expose port
EXPOSE 8000

# Launch Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "4", "pygoat.wsgi"]
