# ☁️ **Amazon EC2 (Elastic Compute Cloud) – Overview**

Amazon **EC2** is a web service that provides **resizable compute capacity** in the cloud.  
It allows you to **launch virtual servers** (instances) on demand and scale them easily.

---

## ⚙️ **Key Features**

| 🚀 Feature | 📝 Description |
| ----------- | --------------- |
| **Elasticity** | Scale up/down instantly based on workload. |
| **Pay-as-you-go** | Pay only for what you use. |
| **Multiple Instance Types** | Choose CPU, memory, and storage configurations. |
| **Custom AMIs** | Create your own Amazon Machine Images. |
| **Security Groups** | Virtual firewalls for inbound/outbound traffic. |

---

## 🧠 **Use Cases**

- 🖥️ Hosting Web Applications  
- 🧮 Running Big Data Jobs  
- ⚙️ CI/CD Build Servers  
- 🧰 Application Backend Hosting  
- 🎮 Game Server Deployment

---

⭐ *EC2 = Your on-demand cloud-based computer.*

# 🧩 **Core Components of Amazon EC2**

---

Amazon EC2 consists of several building blocks that work together to deliver flexible, scalable, and secure compute power in the cloud.

---

## 🖥️ **1. EC2 Instances**

An **EC2 Instance** is a **virtual server** running on AWS infrastructure.  
Each instance provides different combinations of **CPU, memory, storage, and networking** capabilities to match specific workload needs.

---

### 💡 **Instance Types**

AWS categorizes EC2 instances into **families** based on their performance and use case:

| 🏷️ **Instance Family** | 💻 **Example Type** | 🧠 **Best For** |
| ----------------------- | ------------------ | --------------- |
| **General Purpose** | `t3`, `t4g`, `m5`, `m6i` | Balanced compute, memory, and networking (e.g., web servers, dev environments) |
| **Compute Optimized** | `c5`, `c6g`, `c7i` | High-performance compute workloads like gaming or scientific modeling |
| **Memory Optimized** | `r5`, `r6g`, `x2idn` | Applications needing large memory (e.g., in-memory databases) |
| **Storage Optimized** | `i3`, `i4i`, `d2` | High I/O workloads such as big data or NoSQL databases |
| **Accelerated Computing** | `p4`, `g5`, `inf2` | GPU/AI/ML workloads requiring hardware acceleration |

📘 **Tip:** Choose your instance family based on workload type and performance requirements.

---

## 💾 **2. AMI (Amazon Machine Image)**

An **AMI** is a **template** that defines the software configuration of your instance.  
It includes:
- Operating System (e.g., Amazon Linux, Ubuntu, Windows)
- Application server (e.g., Apache, Nginx)
- Preinstalled applications or configurations

🧱 **Use Case:** You can create a **custom AMI** after setting up your preferred environment to reuse later.

---

## 🌐 **3. EBS (Elastic Block Store)**

Amazon **EBS** provides **persistent block storage** for EC2 instances.  
It behaves like a **hard disk**, retaining data even after the instance stops.

### 🔸 **EBS Volume Types:**
| Type | Description |
|------|--------------|
| **gp3 / gp2 (SSD)** | General-purpose, balanced price and performance |
| **io2 / io1 (SSD)** | High-performance SSD for critical workloads |
| **st1 / sc1 (HDD)** | Low-cost magnetic storage for large, sequential workloads |

📦 **Note:** You can attach multiple EBS volumes to a single instance.

---

## 🔒 **4. Security Groups**

A **Security Group** acts as a **virtual firewall** controlling inbound and outbound traffic to your EC2 instances.

- You can specify **allowed ports**, **protocols**, and **IP ranges**.
- Security Groups are **stateful** — if you allow inbound traffic, the corresponding outbound response is automatically allowed.

💡 Example Rule:
| Type | Protocol | Port | Source |
|------|-----------|------|--------|
| SSH | TCP | 22 | Your IP |
| HTTP | TCP | 80 | 0.0.0.0/0 |

---

## 🛜 **5. Elastic IP (EIP)**

An **Elastic IP** is a **static public IPv4 address** assigned to your account.  
It allows you to:
- Maintain a **consistent IP** even if the instance stops or restarts.
- Quickly **remap IPs** between instances for failover or maintenance.

⚠️ **Note:** AWS charges for unused Elastic IPs — release them when not in use.

---

## 🧭 **6. Key Pairs**

**Key Pairs** are used for **secure SSH authentication** to your EC2 instances.

- When you launch an instance, you can select or create a key pair.
- AWS stores the **public key**, and you store the **private key (.pem file)**.

🔐 Example SSH command:
```bash
ssh -i mykey.pem ec2-user@<public-ip>


