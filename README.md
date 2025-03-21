# Multi-AZ & Multi-Region Deployment Using Terraform Packer

This project showcases how to deploy AWS infrastructure across multiple **Availability Zones (AZs)** and **Regions** using Terraform. This approach enhances **fault tolerance, high availability, and disaster recovery** while optimizing application performance across different geographical locations.

---

## Project Overview  

The goal of this project is to **automate infrastructure deployment** across multiple AWS regions using **Terraform and Packer**. By leveraging **Golden AMIs**, security best practices, and automated provisioning, this setup ensures:  

- ✅ **High availability** – Applications remain operational even during regional failures.  
- ✅ **Disaster recovery** – Quick failover to alternate regions in case of an outage.  
- ✅ **Reduced latency** – Users are routed to the nearest available region for better performance.  

---

## Responsibilities & Achievements  

✔️ **Built Golden AMIs using Packer** – Pre-configured with Apache & security patches.  
✔️ **Automated deployments with Terraform & shell scripting**, reducing manual effort by 50%.  
✔️ **Implemented security best practices** – IAM role-based access, EBS encryption, and AWS Secrets Manager for sensitive data.  
✔️ **Enabled S3 versioning & MFA Delete** to protect Packer images from accidental or malicious deletion.  
✔️ **Deployed immutable infrastructure** – Ensuring consistent, repeatable, and secure EC2 instances across regions.  

---

## Technical Implementation  

### 1️⃣ Packer – Golden AMI Creation  

- **Packer** automates the creation of **Golden AMIs** with pre-installed Apache and security updates.  
- These AMIs are stored in **Amazon S3**, with **versioning and MFA Delete** enabled for additional security.  

### 2️⃣ Terraform – Multi-Region Deployment  

- **Terraform** is used to provision and manage infrastructure across multiple AWS regions.  
- The configuration includes:  
  - ✅ **EC2 instances** launched from Packer-built AMIs  
  - ✅ **Virtual Private Clouds (VPCs) & Subnets**  
  - ✅ **Security Groups** enforcing least privilege access  
  - ✅ **Load Balancers & Route 53** for intelligent traffic routing  

### 3️⃣ Multi-Region & High Availability Architecture  

- Identical **infrastructure stacks** are deployed in multiple AWS regions.  
- **Route 53** dynamically routes traffic based on latency or health checks.  
- In case of a **regional outage**, traffic is automatically redirected to a healthy region.  

### 4️⃣ Security Enhancements  

- 🔒 **IAM Roles & Least Privilege Access** – Secure access to AWS resources.  
- 🔒 **EBS Encryption** – Ensuring data security at rest.  
- 🔒 **AWS Secrets Manager** – Safeguarding sensitive information like API keys.  
- 🔒 **S3 Versioning & MFA Delete** – Protecting AMIs from accidental deletion.  

---

## Technologies Used  

- 🟢 **AWS Services:** EC2, VPC, S3, IAM, Route 53, Secrets Manager  
- 🟢 **Infrastructure as Code (IaC):** Terraform  
- 🟢 **Image Management:** Packer  
- 🟢 **Automation & Scripting:** Python, Bash  
- 🟢 **Version Control:** Git  

---

## Key Benefits  

✅ **High Availability** – Ensures uptime even during failures.  
✅ **Disaster Recovery** – Seamless failover across AWS regions.  
✅ **Optimized Performance** – Reduced latency by routing users to the nearest region.  
✅ **Scalability** – Easily scale infrastructure in any region as needed.  
✅ **Fully Automated** – Terraform eliminates manual deployment, ensuring consistency.  

---

## Author  

👤 **Vishwas Sunkari**  
🔗 [LinkedIn](https://www.linkedin.com/in/vishwassunkari/)  
🔗 [GitHub](https://github.com/vishwas337)  
