
flowchart TD
```mermaid
    A[Start] --> B[Log in to AWS Console]
    B --> C[Navigate to EC2 Dashboard]
    C --> D[Click on 'Load Balancers']
    D --> E[Click 'Create Load Balancer']
    E --> F[Choose Load Balancer Type]
    F -->|HTTP/HTTPS| G[Application Load Balancer (ALB)]
    F -->|TCP/UDP| H[Network Load Balancer (NLB)]
    G --> I[Configure Name, Scheme, IP Type]
    H --> I
    I --> J[Select VPC & Subnets]
    J --> K[Configure Listeners (HTTP/HTTPS/TCP/UDP)]
    K --> L[Add SSL Certificate if HTTPS]
    L --> M[Configure Security Groups]
    M --> N[Create Target Group]
    N --> O[Register Targets (EC2/Instances)]
    O --> P[Review Settings & Create Load Balancer]
    P --> Q[Copy DNS Name and Test]
    Q --> R[Completed]

