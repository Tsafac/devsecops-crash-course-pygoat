# PyGoat - Pipeline CI/CD DevSecOps (Projet de pratique)

**Contexte**  
Ce projet est basé sur l’application **PyGoat** (une application Django volontairement vulnérable pour pratiquer les vulnérabilités OWASP Top 10).  
Je l’ai utilisé comme **base d’apprentissage** pour concevoir et tester un **pipeline CI/CD sécurisé** **de bout en bout**.

---

## 🚀 Objectif

Mettre en place un pipeline **GitHub Actions** complet pour :
- **Linting & IaC Security** : Vérifier la qualité des fichiers Terraform et Kubernetes avec `tflint`, `kube-linter` et **Checkov**.
- **Build & Deploy** : Déployer l’application sur un cluster **Kubernetes**.
- **Tests de sécurité automatisés** :
  - **SAST** : Analyse statique via **SonarQube**
  - **SCA** : Scan des dépendances et de l’image Docker via **Trivy**
  - **DAST** : Tests dynamiques via **OWASP ZAP**
- **Reporting** : Génération de rapports de vulnérabilités après chaque run.

---

## ⚙️ Technologies utilisées

- **GitHub Actions** (CI/CD)
- **Terraform**, **Checkov**
- **Kubernetes**, **kube-linter**
- **SonarQube**, **Trivy**, **OWASP ZAP**
- **Docker**

---

## 🗂️ Structure du projet

- `/ci` : fichiers workflows GitHub Actions
- `/terraform` : fichiers Terraform (provisionning EKS ou cluster K8s)
- `/k8s` : manifests Kubernetes
- `/reports` : exemples de rapports (lint, checkov, SAST, SCA, DAST)

---

## ✅ Résultat

Chaque push ou pull request déclenche :
- Lint & audit IaC automatiques
- Build & push de l’image Docker après scan sécurité
- Déploiement automatique sur Kubernetes
- Scan dynamique OWASP ZAP en conteneur isolé
- Stockage des rapports en artefacts

Cela me permet de pratiquer le **« Shift Left Security »** **réellement**, du code jusqu’au cluster Cloud.


## 🎓 Certifications

- **Certified Kubernetes Administrator (CKA)**
- **AWS Solutions Architect Associate**
- **Cisco Ethical Hacker**

---

## 👨‍💻 Crédits

L’application **PyGoat** est développée par [adeyosemanputra](https://github.com/adeyosemanputra/pygoat).  
Ce fork est **uniquement à but pédagogique** pour démontrer un pipeline **CI/CD DevSecOps** automatisé.

---

## 📌 Liens

- Repo original : [PyGoat](https://github.com/adeyosemanputra/pygoat)
- Mon LinkedIn : [www.linkedin.com/in/fabrice-tsafack](https://www.linkedin.com/in/fabrice-tsafack)
- Contact : ronicefabrice@gmail.com

---

## 📢 Licence

Usage uniquement à des fins d’entraînement et de démonstration.  
Contributions open source toujours les bienvenues !
