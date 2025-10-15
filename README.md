
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
## 1. Check Existing Pods

```bash
kubectl get pods
```
2. Run a Pod (Create a Pod)
```bash
kubectl run my-pod --image=nginx
```
Creates a pod named my-pod using the nginx image.
