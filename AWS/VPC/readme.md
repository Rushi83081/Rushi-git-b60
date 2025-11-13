# 🌐 **Amazon VPC (Virtual Private Cloud)**

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

### 🪜 **A. Using AWS Console**

1. **Go to the VPC Dashboard**  
   👉 [https://console.aws.amazon.com/vpc](https://console.aws.amazon.com/vpc)

2. **Click "Create VPC"**  
   - Choose **VPC only** or **VPC and more** (recommended)  
   - Enter **CIDR block:** `10.0.0.0/16`

3. **Add Subnets**
   - Public Subnet: `10.0.0.0/24`
   - Private Subnet: `10.0.1.0/24`
   - Assign each to a different **Availability Zone** for redundancy.

4. **Attach an Internet Gateway (IGW)**
   - Create and attach IGW to your VPC.

5. **Configure Route Tables**
   - Public Route Table → Route all traffic (`0.0.0.0/0`) to IGW.
   - Private Route Table → Route internal traffic within VPC only.

6. **Launch Instances**
   - Deploy EC2 instances in both public and private subnets.
   - Verify access (Public → Internet, Private → Internal only).

---
## 🧭 **5. Routing in VPC**

A Route Table contains a set of rules (routes) that determine where network traffic is directed.
| Destination | Target                   |
| ----------- | ------------------------ |
| 10.0.0.0/16 | local                    |
| 0.0.0.0/0   | NAT Gateway (nat-xxxxxx) |


💡 This setup allows:

Public instances → Internet access directly
Private instances → Internet via NAT only

## 🔐 **6. Security Layers in VPC**
| 🔰 **Layer**       | 🧠 **Scope**   | 🛡️ **Purpose**                                     |
| ------------------ | -------------- | --------------------------------------------------- |
| **Security Group** | Instance-level | Allows/blocks traffic to EC2 instances              |
| **Network ACL**    | Subnet-level   | Controls inbound/outbound traffic for entire subnet |


🧩 Key Difference:

Security Groups are stateful (return traffic automatically allowed)

NACLs are stateless (rules must be defined both ways)

## 🔗**7. VPC Peering**

VPC Peering allows two VPCs to communicate privately using AWS’s internal network.

✅ Use Cases:

Connect VPCs across different accounts or regions.

Enable internal app communication (e.g., front-end in one VPC, DB in another).
