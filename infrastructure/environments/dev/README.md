# 🧪 Ambiente Dev – Consumo do Módulo VPC

## 🇧🇷 Descrição  
Este ambiente simula um cenário real de desenvolvimento onde um módulo reutilizável é aplicado para provisionar uma infraestrutura básica na AWS com Terraform.  
Aqui, o módulo `vpc` é instanciado com valores específicos de rede e região.

## 🇬🇧 Description  
This environment simulates a real-world development scenario where a reusable module is used to provision basic AWS infrastructure with Terraform.  
The `vpc` module is instantiated with specific networking and region values.

---

## ▶️ Execução | How to Run

**1. Acesse a pasta do ambiente / Access the environment folder:**
```bash
cd infrastructure/environments/dev

---

2. Inicialize e aplique a infraestrutura / Init and apply infrastructure:

terraform init
terraform apply

    Obs: Certifique-se de que o AWS CLI está configurado com aws configure.

🧩 Variáveis utilizadas

As variáveis são passadas via arquivo terraform.tfvars localizado na mesma pasta.
Elas controlam o CIDR da VPC, subnets públicas e privadas, e a região.
📁 Estrutura

environments/dev/
├── main.tf
├── terraform.tfvars
└── README.md

ℹ️ Nota Importante | Important Note

Este ambiente demonstra uma prática recomendada de separar a lógica (módulo) da execução (ambiente), promovendo reuso e organização.

This environment demonstrates best practices by separating logic (module) from execution (environment), promoting reuse and maintainability.
