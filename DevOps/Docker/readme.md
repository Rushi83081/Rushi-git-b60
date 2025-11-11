🧩 Overview

Docker is a platform that enables developers to build, package, and run applications in containers — lightweight, portable environments that include everything needed for an app to run.

⚙️ Why Docker?

🚀 Lightweight: Uses fewer resources than VMs.
🔁 Consistency: Works across any environment — “It works on my machine” problem solved.
🧱 Isolation: Each container runs in its own environment.
🔧 Speed: Faster deployments and rollbacks.
🌍 Portability: Run anywhere — cloud, on-prem, or local machine.

🛠️ Core Concepts

| Concept        | Description                                         |
| -------------- | --------------------------------------------------- |
| **Image**      | A blueprint for containers (e.g., Ubuntu + Nginx).  |
| **Container**  | A running instance of an image.                     |
| **Dockerfile** | A script with instructions to build a Docker image. |
| **Docker Hub** | Repository to store and share images.               |
| **Volume**     | Persistent data storage for containers.             |

🧱 Basic Commands

# Build an image
docker build -t myapp .

# Run a container
docker run -itd --name c1 -p 80:80 myapp

# List containers
docker ps

# Pull image 
docker pull nginx

# Push image to Docker Hub
docker push username/myapp

# Access the container’s shell (interactive mode)
docker exec -it <container_id_or_name> /bin/bash

# Stop and remove containers
docker stop <container_id>
docker rm <container_id>
