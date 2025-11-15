flowchart TD
    A[Start] --> B{Which Load Balancer?}

    B -->|HTTP / HTTPS| C[Application Load Balancer (ALB)]
    B -->|TCP / UDP| D[Network Load Balancer (NLB)]
    B -->|IP Routing Only| E[Gateway Load Balancer]

    C --> F[Open AWS EC2 Console]
    D --> F
    E --> F

    F --> G[Navigate to Load Balancers]
    G --> H[Click 'Create Load Balancer']

    H --> I[Choose LB Type: ALB or NLB]
    I --> J[Configure Name, Scheme, IP Type]

    J --> K[Select VPC & Subnets]
    K --> L[Configure Listeners]

    L --> M{Is HTTPS?}
    M -->|Yes| N[Add SSL Certificate (ACM)]
    M -->|No| O[Skip SSL Setup]

    N --> P[Create / Select Security Group]
    O --> P

    P --> Q[Create Target Group]

    Q --> R[Register Targets (EC2, IP, Lambda)]
    R --> S[Review Settings]
    S --> T[Create Load Balancer]

    T --> U[Copy DNS Name]
    U --> V[Test in Browser or Client]
    V --> W[Completed]
