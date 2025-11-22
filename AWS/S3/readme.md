# 🪣 **Amazon S3 (Simple Storage Service)** 

Amazon **S3 (Simple Storage Service)** is a **scalable, secure, and highly available object storage service** used to store and retrieve any amount of data at any time — from anywhere on the web.

---

## ☁️ **1. What is S3?**

S3 is an **object-based storage** system that allows you to store data as **objects** inside **buckets**.  
Each object consists of:
- **Key (Name of file)**
- **Value (File data)**
- **Metadata (Information about data)**
- **Version ID (if versioning is enabled)**

🧠 **Use Cases:**
- Backup and restore
- Static website hosting
- Data lake and analytics
- Application assets (images, videos, logs)

---

## 🧩 **2. Core Concepts**

| 🧱 **Component** | 📝 **Description** |
|------------------|-------------------|
| **Bucket** | Container where all your objects (files) are stored. |
| **Object** | The actual file or data stored inside a bucket. |
| **Key** | The unique name for each object within a bucket. |
| **Region** | Physical AWS location where your bucket resides. |
| **Storage Class** | Defines cost and availability level of data. |
| **Versioning** | Keeps multiple versions of objects. |
| **Encryption** | Protects data at rest and in transit. |
| **ACL / Bucket Policy** | Control access to S3 buckets and objects. |

---

## 🏗️ **3. How to Create an S3 Bucket (Step-by-Step)**

1. **Open S3 Dashboard**  
   Go to 👉 [https://console.aws.amazon.com/s3](https://console.aws.amazon.com/s3)

2. **Click “Create Bucket”**
   - Enter a **unique name** (e.g., `my-demo-bucket-123`)
   - Choose a **Region** (e.g., `us-east-1`)

3. **Configure Options**
   - Enable **Versioning** (optional)
   - Enable **Encryption** (SSE-S3 or SSE-KMS)
   - Choose **Public access settings**

4. **Set Permissions**
   - By default, S3 blocks all public access.
   - You can make specific files public later if needed.

5. **Create Bucket**
   - Click **Create Bucket** ✅

---

## 🧮 4. Storage Classes

Amazon S3 provides different storage classes based on access frequency and cost.

| 💾 **Storage Class**                   | 🕒 **Access Frequency** | 💰 **Cost** | 📘 **Use Case**                          |
| -------------------------------------- | ----------------------- | ----------- | ---------------------------------------- |
| **S3 Standard**                        | Frequent                | High        | Active data, websites                    |
| **S3 Intelligent-Tiering**             | Variable                | Medium      | Automatic cost optimization              |
| **S3 Standard-IA (Infrequent Access)** | Low                     | Lower       | Backups, disaster recovery               |
| **S3 One Zone-IA**                     | Low (Single AZ)         | Lower       | Non-critical, infrequently accessed data |
| **S3 Glacier Instant Retrieval**       | Very Low                | Very Low    | Archival, occasional access              |
| **S3 Glacier Deep Archive**            | Rare                    | Lowest      | Long-term backups (7–10 years)           |

## 🧭 5. Versioning

Keeps multiple versions of an object in the same bucket.

Protects against accidental deletions or overwrites.

🧠 If you delete an object, the previous version remains recoverable.

## 📜 6. Access Management

You can control access using:

IAM Policies (User-based access)

Bucket Policies (Resource-based access)

ACLs (Access Control Lists) version remains recoverable.

## 🧹 7. Lifecycle Rules

Automatically transition or delete objects based on age.

Example:

Move objects to S3 Glacier after 30 days.

Delete permanently after 365 days.

## 🗺️ 8. Summary Table

| 🧩 Feature          | 💡 Purpose                           |
| ------------------- | ------------------------------------ |
| **Bucket**          | Container for objects                |
| **Object**          | Individual data file                 |
| **Versioning**      | Track multiple versions of an object |
| **Encryption**      | Secure stored data                   |
| **Lifecycle Rules** | Automate data transitions            |
| **Policies**        | Control access                       |
| **Storage Classes** | Optimize cost                        |
| **Access Logs**     | Track usage and security             |
