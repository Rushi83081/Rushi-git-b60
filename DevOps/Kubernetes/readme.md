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
