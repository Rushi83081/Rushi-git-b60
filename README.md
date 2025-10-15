
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

### 1. Check all Pods

```bash
kubectl get pods
Lists all the pods running in the current namespace.

2. Run a Pod
bash
Copy code
kubectl run my-pod --image=nginx --restart=Never
Creates a pod named my-pod using the nginx image.
--restart=Never ensures this runs as a pod (not a deployment).

3. Expose the Pod as a Service
bash
Copy code
kubectl expose pod my-pod --type=NodePort --port=80 --target-port=80
Creates a service exposing my-pod on port 80.
NodePort makes it accessible outside the cluster.

4. Check Services
bash
Copy code
kubectl get services
Lists all the services in the current namespace.

5. Execute a Command Inside the Pod
bash
Copy code
kubectl exec -it my-pod -- /bin/bash
Opens an interactive terminal inside the my-pod container.
Useful for debugging.

6. Delete the Pod
bash
Copy code
kubectl delete pod my-pod
Deletes the pod named my-pod.

7. Delete the Service
bash
Copy code
kubectl delete service my-pod
Deletes the service exposing the pod.

