# 🌍 **DevOps — Terraform**

---

## 🧩 **Overview**

Terraform is an **open‑source Infrastructure as Code (IaC)** tool developed by **HashiCorp**. It enables you to **define, provision, and manage infrastructure** across multiple cloud providers using **HCL (HashiCorp Configuration Language)**.

---

## ⚙️ **Why Use Terraform?**

✨ **Automation** — Fully automated and repeatable infrastructure deployments.

🌐 **Multi‑Cloud Support** — Works with AWS, Azure, GCP, Kubernetes, and many more.

🔁 **Consistency** — Ensures reproducible and reliable environments across teams.

📈 **Scalability** — Easily manage small to enterprise‑level infrastructure.

🧠 **Version Control** — Track every infrastructure change using Git.

---

## 🏗️ **Core Concepts**

| Concept          | Description                                                       |
| ---------------- | ----------------------------------------------------------------- |
| **Provider**     | Plugin that lets Terraform manage resources (e.g., AWS, Azure).   |
| **Resource**     | The component of infrastructure to manage (like an EC2 instance). |
| **Module**       | Reusable collection of Terraform configurations.                  |
| **State File**   | Tracks the real-world resources created by Terraform.             |
| **Plan & Apply** | Stages of previewing and deploying infrastructure changes.        |

---

## 📦 **Basic Workflow**

1️⃣ **Write** → Define infrastructure in `.tf` files.

2️⃣ **Init** → `terraform init` to download provider plugins.

3️⃣ **Plan** → `terraform plan` to preview changes.

4️⃣ **Apply** → `terraform apply` to create/update infrastructure.

5️⃣ **Destroy** → `terraform destroy` to remove resources.

---

## 📘 **Example: Simple AWS EC2 Resource**

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

---

## 📝 **Recommended Repository Structure**

```
📁 terraform-infra/
│── main.tf
│── variables.tf
│── outputs.tf
│── provider.tf
└── modules/
    └── vpc/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

✨ *This file is ready to upload to your GitHub repository!*
