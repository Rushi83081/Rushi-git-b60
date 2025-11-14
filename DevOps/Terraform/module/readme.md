flowchart TD
```mermaid
    A[terraform]
    A --> B[vpc]
    B --> B1[vpc.tf]
    B --> B2[variable_vpc.tf]
    B --> B3[output.tf]

    A --> C[ec2]
    C --> C1[ec2.tf]
    C --> C2[variable.tf]

    A --> D[main.tf]
    A --> E[provider.tf]
```
