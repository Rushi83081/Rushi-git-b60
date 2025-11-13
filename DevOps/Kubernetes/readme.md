🧩 Overview

Kubernetes (K8s) is an open-source container orchestration platform that automates deployment, scaling, and management of containerized applications.

⚙️ Why Kubernetes?

🔁 Scalability: Automatically scale apps based on demand.

⚡ Self-healing: Restarts failed containers automatically.

🌐 Load Balancing: Distributes traffic efficiently.

🧠 Declarative Configuration: Define desired state and let K8s handle it.

☁️ Cloud Native: Works seamlessly across any cloud provider.


🏗️ Core Components 

| Component              | Description                                        |
| ---------------------- | -------------------------------------------------- |
| **Pod**                | Smallest deployable unit (one or more containers). |
| **Deployment**         | Defines desired state for pods.                    |
| **Service**            | Exposes applications to the network.               |
| **Ingress**            | Manages external access (like HTTP).               |
| **ConfigMap / Secret** | Store configuration and sensitive data.            |

# 🚀 **Kubernetes Architecture Explained**

## 🧠 Master Node (Control Plane)

The **master node** is the **brain** of the Kubernetes cluster — it controls and manages the whole system.

### Key Components:

- 🔹 **API Server**  
  The front door for all commands and requests (from users or tools like `kubectl`).  
  *Everything flows through here first!*

- 🔹 **Scheduler**  
  Decides **which worker node** should run your app’s pods, based on available resources.

- 🔹 **Controller Manager**  
  Watches over the cluster, ensuring apps are running smoothly.  
  Automatically fixes problems by restarting pods or managing resources.

- 🔹 **etcd**  
  A lightweight, distributed **key-value database** storing the entire cluster’s state and configurations.

---

## ⚙️ Worker Node (App Executor)

Worker nodes are where your applications **actually run** — inside containers managed by Kubernetes.

### Key Components:

- 🔹 **Container Runtime**  
  Software like **Docker** or **containerd** that runs your app inside containers.

- 🔹 **kube-proxy**  
  Handles networking and communication between pods and services.  
  Manages IP addresses and load balancing.

- 🔹 **kubelet**  
  The agent on each worker node.  
  Listens to the master’s instructions and manages pods accordingly.  
  Reports status back to the control plane.

---

## 🗂️ Quick Summary Table

| Component          | Node Type   | Description                                       |
|--------------------|-------------|-------------------------------------------------|
| **API Server**     | Master      | Receives all requests and commands               |
| **Scheduler**      | Master      | Chooses nodes to run pods                         |
| **Controller Manager** | Master   | Keeps apps healthy and running                    |
| **etcd**           | Master      | Stores cluster data and config                    |
| **Container Runtime** | Worker    | Runs containers (your app)                        |
| **kube-proxy**     | Worker      | Manages networking between pods                   |
| **kubelet**        | Worker      | Runs pods and reports status to master            |

---

## 📝 Notes to Remember

- A **Pod** is the smallest deployable unit in Kubernetes — usually contains **one container**, but can hold more.  
- A **Node** is a machine (physical or virtual) —  
- The **master node** manages the cluster,  
- The **worker nodes** run your applications.

---

🛠️ Common Commands
# Check cluster nodes
```bash
kubectl get nodes
```
# Deploy an app
```bash
kubectl apply -f deployment.yaml
```
# Check running pods
```bash
kubectl get pods
```
# View logs
```bash
kubectl logs <pod_name>
```
# Delete resources
```bash
kubectl delete -f deployment.yaml
```
