# 🌐 Módulo VPC | VPC Module

## 🇬🇧 Description  
This module provisions a custom VPC with support for multiple public and private subnets across different Availability Zones.  
It is designed for reuse across environments (dev, staging, prod) with full parameterization via variables.

## 🇧🇷 Descrição  
Este módulo provisiona uma VPC personalizada com suporte a múltiplas subnets públicas e privadas em diferentes Zonas de Disponibilidade (AZs).  
Foi desenvolvido para reuso entre ambientes (dev, staging, prod), com total parametrização via variáveis.

---

## ✅ Features
- Custom CIDR block
- Public and private subnets
- Internet Gateway (optional)
- Route Tables and associations

---

## 🧾 Inputs (variables.tf)

| Name              | Description                              | Type   | Default         |
|-------------------|------------------------------------------|--------|-----------------|
| `vpc_cidr`        | CIDR block of the VPC                    | string | `"10.0.0.0/16"` |
| `public_subnets`  | List of public subnet CIDRs             | list   | n/a             |
| `private_subnets` | List of private subnet CIDRs            | list   | n/a             |
| `region`          | AWS region                              | string | `"eu-west-1"`   |

---

## 📤 Outputs (outputs.tf)

- `vpc_id` – The ID of the created VPC  
- `public_subnets_ids` – IDs of public subnets  
- `private_subnets_ids` – IDs of private subnets  

---

## 🚀 Usage Example

```hcl
module "vpc" {
  source          = "../../modules/vpc"
  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  region          = "eu-west-1"
}

---

ℹ️ Nota Importante | Important Note

Este módulo segue boas práticas para reutilização em múltiplos ambientes.
All resources are tagged and structured for efficient, secure, and scalable deployments in production environments.
