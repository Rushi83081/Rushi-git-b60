flowchart TD

    A[terraform/]:::folder

    A --> B[vpc/]:::folder
    B --> B1[vpc.tf]
    B --> B2[variable_vpc.tf]
    B --> B3[output.tf]

    A --> C[ec2/]:::folder
    C --> C1[ec2.tf]
    C --> C2[variable.tf]

    A --> D[main.tf]
    A --> E[provider.tf]

    classDef folder fill:#dfe7fd,stroke:#4a6fa5,stroke-width:2px;
    classDef file fill:#ffffff,stroke:#7d8597,stroke-width:1px;
    class B1,B2,B3,C1,C2,D,E file;

