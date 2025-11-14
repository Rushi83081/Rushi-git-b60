```mermaid
flowchart TD
    terraform --> vpc
    terraform --> ec2
    terraform --> main_tf
    terraform --> provider_tf

    vpc --> vpc_tf
    vpc --> variable_vpc_tf
    vpc --> output_tf

    ec2 --> ec2_tf
    ec2 --> variable_tf
```
