
# 🚀 **PyGoat — Pipeline CI/CD DevSecOps**

**Contexte**
Ce projet est basé sur **PyGoat**, une application Django volontairement vulnérable pour pratiquer la détection des failles **OWASP Top 10**.
Je l’ai utilisée comme **terrain de jeu** pour construire un **pipeline CI/CD DevSecOps complet**, du **lint** au **déploiement Kubernetes**, avec promotion **staging → production**.

---

## 🎯 **Objectif**

Mettre en place une chaîne GitHub Actions **sécurisée** et **automatisée** pour :

* ✅ **Lint & Security IaC** : `TFLint`, `Terraform fmt`, `validate`, `Checkov`, `kube-linter`
* ✅ **SAST** : Analyse statique de code avec **SonarQube**
* ✅ **Tests unitaires** : `pytest` & `python manage.py test`
* ✅ **SCA** : Scan dépendances & image Docker via **Trivy**
* ✅ **DAST** : Tests dynamiques avec **OWASP ZAP**
* ✅ **Build & Push** Docker : Image `staging-latest` sur **Docker Hub**
* ✅ **Déploiement Kubernetes** : staging **automatique** + promotion vers **prod**
* ✅ **Reporting** : Artefacts CI (rapports HTML, JSON)

---

## ⚙️ **Architecture du Workflow**

| Branche   | Actions                                                                          | Résultat                     |
| --------- | -------------------------------------------------------------------------------- | ---------------------------- |
| `staging` | Lint → Tests → Build → Scan → Push image `staging-latest` → Deploy staging → ZAP | Déploiement sur `staging`    |
| `main`    | Promote → Retag image `prod-<SHA>` → Deploy prod                                 | Déploiement sur `production` |

🔗 **Promotion en prod** :
Le job **`promote`** tire l’image `staging-latest`, la retague en `prod-<commit-sha>` puis la pousse sur Docker Hub pour le namespace **prod**.

---

## 🧩 **Tech Stack**

* **GitHub Actions** (CI/CD)
* **Terraform**, **Checkov**, **TFLint**
* **Kubernetes**, **kube-linter**
* **SonarQube**, **Trivy**, **OWASP ZAP**
* **Docker**, **Gunicorn**

---

## 📂 **Structure du repo**

```
├── .github/workflows/   # Pipelines CI/CD
├── terraform/           # Fichiers Terraform (EKS)
├── manifests/           # Déploiements & Services Kubernetes
├── scripts/             # Scripts utilitaires (ex: install Docker)
├── reports/             # Artefacts générés (lint, SAST, SCA, DAST)
├── requirements.txt     # Dépendances Python
└── manage.py            # Application Django
```

---

## ✅ **Bonnes pratiques appliquées**

* **Shift Left Security** : Sécurité intégrée dès le commit
* **Scans multi-niveaux** : Code, dépendances, conteneur, runtime
* **Secrets & credentials** : Gestion via `secrets` GitHub
* **Promotion contrôlée** : Seul un merge `staging` → `main` déclenche la prod
* **Artefacts versionnés** : Rapports conservés après chaque pipeline

---

## 🏅 **Certifications**

* **CKA — Certified Kubernetes Administrator**
* **AWS Solutions Architect Associate**
* **Cisco Ethical Hacker**

---

## 📢 **Crédits**

✅ **App de base** : [PyGoat](https://github.com/adeyosemanputra/pygoat)
✅ **Auteur du pipeline** : Fabrice Tsafack (fork à usage pédagogique)

---

## 🔗 **Ressources**

* Docker Hub : `docker.io/<DOCKER_USERNAME>/pygoat`
* [Profil LinkedIn](https://www.linkedin.com/in/fabrice-tsafack)
* Contact : [ronicefabrice@gmail.com](mailto:ronicefabrice@gmail.com)

---

## ⚖️ **Licence**

Usage uniquement pour **formation DevSecOps** et **démonstration technique**.
Contributions bienvenues ! 🚀✨


