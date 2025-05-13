# 🚀 Terraform AWS Web Server Deployment

This project uses **Terraform** to provision two EC2 instances running a simple web server in **AWS eu-west-1 (Ireland)** region. It follows a modular structure ideal for DevOps practice and interviews.

---

## 🗺️ Architecture

- VPC with 2 public subnets (across AZs)
- EC2 instances launched in each subnet
- Security Group allowing HTTP (80) and SSH (22)
- Amazon Linux 2 AMI with Apache installed via user_data

![Architecture Diagram](https://raw.githubusercontent.com/prathameshwarekar/devops-assets/main/terraform-ec2-architecture.png)

---

## 📁 Project Structure

terraform-aws-webserver/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
│ ├── ec2/
│ │ ├── main.tf
│ │ └── variables.tf
│ ├── vpc/
│ │ ├── main.tf
│ │ └── variables.tf
│ └── security_group/
│ ├── main.tf
│ └── variables.tf



---

## 🔧 Prerequisites

- [Terraform](https://www.terraform.io/downloads)
- AWS CLI configured (`aws configure`)
- AWS IAM user with permission to create VPC, EC2, and Security Groups

---

## 🚀 Usage

### 1. Clone this repo
```bash
git clone https://github.com/prathamesh0995/terraform-aws-webserver.git
cd terraform-aws-webserver

2. Initialize Terraform

terraform init

3. Review plan

terraform plan

4. Apply configuration

terraform apply

🧹 Teardown
To delete all created AWS resources:
terraform destroy


Prathamesh Warekar
Cloud & DevOps Enthusiast | 
