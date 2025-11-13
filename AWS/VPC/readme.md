# 🌐 **Amazon VPC (Virtual Private Cloud) – Complete Notes**

Amazon **VPC (Virtual Private Cloud)** lets you **provision a logically isolated section of the AWS Cloud**, where you can **launch and manage AWS resources** in a secure, customizable virtual network.

---

## 🧩 **1. What is a VPC?**

A **VPC** is your **own private network** within AWS — similar to a traditional on-premises data center but **fully managed, scalable, and programmable**.

You define:
- IP address ranges  
- Subnets (public/private)  
- Route tables  
- Internet Gateways, NAT Gateways  
- Security controls (NACLs, Security Groups)

---

## 🧠 **2. Key Concepts & Components**

| 🧱 **Component** | 📝 **Description** |
| ---------------- | ----------------- |
| **VPC** | Virtual network that isolates your AWS resources. |
| **Subnet** | Segment of a VPC where you place resources. |
| **Internet Gateway (IGW)** | Enables internet access for public subnets. |
| **NAT Gateway** | Allows private instances to access the internet securely. |
| **Route Table** | Defines how traffic is routed within the VPC. |
| **Security Group** | Instance-level firewall for inbound/outbound traffic. |
| **Network ACL (NACL)** | Subnet-level firewall for controlling traffic. |
| **VPC Peering** | Connects multiple VPCs for private communication. |
| **VPN / Direct Connect** | Connects on-premises networks to AWS VPC. |

---

## 🏗️ **3. VPC Architecture Overview**


