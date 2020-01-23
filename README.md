This repo has two diffent apporach to build highly scalable Jenkins based CI/CD solution

First approach is on AWS and EC2 based
    Packer: to bake golden images for Jenkins Master and Jenkins Slaves
    Terraform: to provision required infra on AWS automatically
This solution uses custom shell scripting to handle automatic slave registration
Initial master configuration handed in golden image creation phase like
- Install plugins
- Disable cli
- Disable jnlp
- Setting basic security
- etc...

In order to set initial ami id for baking golden image with Packer, use this link which base image is available for your region https://aws.amazon.com/amazon-linux-ami/.

Second approach is K8 based.
