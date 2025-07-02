# PyGoat - Pipeline CI/CD DevSecOps (Projet de pratique)

**Contexte**  
Ce projet est basé sur l’application **PyGoat** (une application web Django volontairement vulnérable pour pratiquer les vulnérabilités OWASP Top 10).  
Je l’ai utilisé comme **base d’apprentissage** pour concevoir et tester un **pipeline CI/CD sécurisé**.

---

## 🚀 Objectif

Mettre en place un pipeline **GitHub Actions** complet pour :
- **Linting** : Vérifier la qualité des fichiers Terraform et Kubernetes.
- **Build & Deploy** : Déployer l’application sur un cluster **Kubernetes**.
- **Tests de sécurité automatisés** :
  - **SAST** : Analyse statique via **SonarQube**
  - **SCA** : Scan des dépendances via **Trivy**
  - **DAST** : Tests dynamiques via **OWASP ZAP**
  - **IaC Security** : Contrôle de la sécurité Infrastructure as Code avec **Checkov**
- **Reporting** : Génération de rapports à chaque étape du pipeline.

---

## ⚙️ Technologies utilisées

- **GitHub Actions** pour l’automatisation CI/CD
- **Terraform** pour la gestion de l’infrastructure
- **Kubernetes** pour l’orchestration
- **SonarQube**, **Trivy**, **OWASP ZAP**, **Checkov** pour la sécurité
- **Docker** pour le packaging de l’application

---

## 📂 Structure du projet

- `/ci` : fichiers de configuration GitHub Actions
- `/terraform` : fichiers Terraform pour provisionner l’infrastructure
- `/k8s` : manifests Kubernetes
- `/reports` : exemples de rapports générés

---

## 📈 Résultat

Grâce à ce pipeline, chaque commit déclenche :
- Un linting automatique
- Une build et un déploiement sur Kubernetes
- Des scans de sécurité automatisés
- Une génération de rapports de vulnérabilités

Cela m’a permis de **pratiquer concrètement le « Shift Left Security »**, en intégrant la sécurité **dès le développement**, jusqu’au déploiement Cloud.

---

## 👨‍💻 Crédits

L’application **PyGoat** originale est développée par [adeyosemanputra](https://github.com/adeyosemanputra/pygoat) et la communauté.  
Ce fork est utilisé **à but pédagogique**, pour expérimenter un pipeline **CI/CD DevSecOps**.

---

## 📌 Liens utiles

- Repo original : [PyGoat](https://github.com/adeyosemanputra/pygoat)
- Mon LinkedIn : www.linkedin.com/in/fabrice-tsafack
- Contact : ronicefabrice@gmail.com

---

## 📢 Licence

Usage uniquement à des fins d’entraînement et de démonstration.  
Toutes contributions open source restent les bienvenues !
