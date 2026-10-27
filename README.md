<div align="center">

# 🔄 Azure Infrastructure Terraform CI/CD Pipeline
### Declarative GitHub Actions Workflows, Validation Gates & Automated Resource Provisioning

[![Platform](https://img.shields.io/badge/Platform-Microsoft_Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com)
[![IaC](https://img.shields.io/badge/IaC-HashiCorp_Terraform-7B2CBF?style=for-the-badge&logo=terraform&logoColor=white)](https://terraform.io)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/features/actions)
[![Validation](https://img.shields.io/badge/Checks-Format_%26_Validation-00FF66?style=for-the-badge&logo=checkmarx&logoColor=0B0813)](#-pipeline-lifecycle)

**Architected by [Mihir Maurya](https://github.com/MihirMaurya-dev) · Enterprise Cloud Architect & DevSecOps**  
[![Portfolio](https://img.shields.io/badge/Portfolio-mihirmaurya--dev.github.io-7B2CBF?style=flat-square&logo=googlechrome&logoColor=white)](https://mihirmaurya-dev.github.io/)
[![Live Project](https://img.shields.io/badge/Live_Project-b18g119.online-00FF66?style=flat-square&logo=cloudflare&logoColor=0B0813)](https://b18g119.online)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://linkedin.com/in/mihirmauryaa1)

</div>

---

## 🏗️ Pipeline Architecture

This repository automates the validation, linting, and provisioning of core Azure infrastructure components (Resource Groups, Virtual Networks, Subnets) using **GitHub Actions**.

`mermaid
flowchart LR
    A[Git Push / PR] --> B[Checkout Code\nactions/checkout@v4]
    B --> C[Setup Terraform CLI\nhashicorp/setup-terraform@v3]
    C --> D[terraform init]
    D --> E[terraform fmt -check -recursive]
    E --> F[terraform validate]
    F --> G[CI Gate Passed 🟢]

    classDef blueStyle fill:#08182b,stroke:#0078d7,stroke-width:2px,color:#fff;
    classDef greenStyle fill:#032111,stroke:#00ff66,stroke-width:2px,color:#fff;

    class A,B,C,D,E,F blueStyle;
    class G greenStyle;
`

---

## 📂 Repository Topology

`	ext
PipeLine/
├── .github/
│   └── workflows/
│       └── pipeline.yml      # 🔄 GitHub Actions CI/CD Pipeline
├── resource-group/           # 📁 Azure Resource Group configuration
│   ├── main.tf
│   ├── outputs.tf
│   ├── providers.tf
│   ├── terraform.tfvars
│   └── variables.tf
└── vnet/                     # 🌐 Azure Virtual Network & Subnet configuration
    ├── main.tf
    ├── outputs.tf
    ├── providers.tf
    ├── terraform.tfvars
    └── variables.tf
`

---

## ⚡ Local Execution Commands

`ash
# Initialize and validate Virtual Network configuration
cd vnet
terraform init
terraform fmt -check
terraform validate
`

---

<div align="center">

**[Portfolio](https://mihirmaurya-dev.github.io/)** · **[LinkedIn](https://linkedin.com/in/mihirmauryaa1)** · **[DevOps Knowledge Vault](https://github.com/MihirMaurya-dev/DevOps-Notes)**

</div>