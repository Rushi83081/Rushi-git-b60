
flowchart TD
    A([Start]) --> B{Which<br>Load Balancer?}

    B -->|HTTP / HTTPS<br>Web Traffic| C[Application Load Balancer (ALB)]
    B -->|TCP / UDP<br>Network Traffic| D[Network Load Balancer (NLB)]
    B -->|IP Routing Only| E[Gateway Load Balancer]

    C --> F[Open AWS Console → EC2]
    D --> F
    E --> F

    F --> G[Load Balancing → Load Balancers]
    G --> H[Create Load Balancer]

    H --> I[Choose LB Type (ALB/NLB)]
    I --> J[Configure Name, Scheme, IP Type]

    J --> K[Select VPC & Subnets]
    K --> L[Configure Listeners]

    L --> M{HTTPS?}
    M -->|Yes| N[Add SSL Certificate (ACM)]
    M -->|No| O[Skip SSL Setup]

    N --> P[Create / Select Security Group]
    O --> P

    P --> Q[Create Target Group]

    Q --> R[Register Targets (EC2, IP, Lambda)]
    R --> S[Review Settings]
    S --> T([Create Load Balancer])

    T --> U([Copy DNS Name])
    U --> V([Test in Browser or Client])
    V --> W([Completed])

