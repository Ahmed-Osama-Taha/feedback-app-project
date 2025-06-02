# 🚀 Ahmed Ultimate CI/CD – Feedback App

A fully automated, production-grade, 3-tier application showcasing end-to-end DevOps skills using Terraform, Azure DevOps, Argo CD, Helm, Prometheus, Grafana, and Vault.

## 🧰 Stack Overview

| Layer        | Tech                                     |
|--------------|------------------------------------------|
| Infrastructure | Terraform (Custom AWS EKS + VPC modules) |
| Configuration | Ansible (EC2 Agent Provisioning)         |
| CI/CD        | Azure DevOps Pipelines, SonarCloud, Trivy |
| Deployment   | Kubectl, Helm (with JFrog), Argo CD       |
| Monitoring   | Prometheus, Grafana                       |
| Secrets      | HashiCorp Vault                           |
| App          | React (Frontend), Flask (Backend), PostgreSQL (DB) |

---

## 📦 Key DevOps Features

- **Custom Terraform modules** for EKS & VPC [[GitHub Modules](https://github.com/Ahmed-Osama-Taha/EKS-VPC-Terraform-Modules.git)]
- **S3 remote backend with locking** for safe Terraform state management
- **Ansible pipeline** to bootstrap and configure EC2 Azure DevOps agents
- **CI pipeline** with:
  - Linting (flake8, pylint, black, isort)
  - Unit Testing & Coverage (pytest + `coverage.xml`)
  - SonarCloud analysis (passed Quality Gate ✅)
  - Trivy image scanning
- **CD pipeline** (parameterized by environment):
  - `dev`: `kubectl apply`
  - `staging`: Helm chart deploy (via JFrog repo)
  - `prod`: Argo CD auto-sync from prod branch
- **Monitoring**:
  - Prometheus + Flask metrics exporter
  - Grafana dashboards with PromQL queries
- **Secrets Management**:
  - Vault integration with Kubernetes
  - Sidecar agent injection with `vault.hashicorp.com/*` annotations

---

## 🌐 Demo & Monitoring Dashboards

- 🔥 Live App Preview: `http://localhost:30080`
- 📊 Prometheus Metrics + Grafana Dashboard
- 🔐 Vault Dashboard for Secret Injection
- 🎯 Argo CD UI for GitOps Management

> This project demonstrates my full capabilities as a DevOps engineer: automation, security, quality, and delivery.

---

## 🤝 Connect With Me

- 📧 ahmed.osama.taha2@gmail.com
- 💼 [LinkedIn](https://www.linkedin.com/in/ahmedosamataha)
- 📂 [Helm Repo](https://trial5x3qdq.jfrog.io/ui/native/ahmed-helm-repo-helm-local/)
- 🌐 [Terraform Modules](https://github.com/Ahmed-Osama-Taha/EKS-VPC-Terraform-Modules.git)



---

## 📸 Screenshots

| Feature        | Screenshot |
|----------------|------------|
| SonarCloud Analysis | ![SonarCloud](screenshots/sonarqube.png) |
| ArgoCD Deployment | ![ArgoCD](screenshots/argocd.png) |
| Prometheus Metrics | ![Prometheus](screenshots/prometheus.png) |
| Grafana Dashboard | ![Grafana](screenshots/grafana.png) |
| Vault Secrets | ![Vault](screenshots/vault.png) |
| Live App | ![Web App](screenshots/webapp.png) |

> All screenshots stored in `screenshots/` folder.


---


