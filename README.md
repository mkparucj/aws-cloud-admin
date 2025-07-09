# AWS Cloud Administrator Portfolio (Simulated with LocalStack)

This repository documents my 4-week hands-on journey into AWS Cloud Administration, using LocalStack to simulate core AWS services in a cost-free, offline environment.

Each week focused on real-world AWS tasks — IAM, VPC networking, EC2 & S3 operations, monitoring, automation, and scripting — all organized, scripted, and documented.

---

## Weekly Breakdown

### Week 1 – IAM (Identity & Access Management)
- Created users, groups, and roles using AWS CLI.
- Wrote custom IAM policies for:
  - Full admin access
  - S3 read-only
  - EC2 start/stop
- Automated user creation with shell scripts.
- [Folder: `/week1`](./week1)

---

### Week 2 – VPC & EC2 Networking
- Created a custom VPC and subnet structure.
- Simulated EC2 instance launch inside a public subnet.
- Worked with security groups and route tables.
- [Folder: `/week2-vpc`](./week2-vpc)

---

### Week 3 – S3 Operations + IAM Policy Application
- Created and tested S3 buckets using the CLI.
- Wrote and applied custom IAM policies for S3 access.
- Simulated file uploads and permission enforcement.
- [Folder: `/week3-s3-ec2`](./week3-s3-ec2)

---

### Week 4 – Monitoring, Automation & Cloud Auditing
- Created CloudWatch Log Groups and Streams.
- Simulated EC2 logging and infrastructure events.
- Wrote automation scripts to:
  - Upload files to S3
  - Log mock EC2 activity
- Documented CloudTrail use cases.
- [Folder: `/week4-monitoring`](./week4-monitoring)

---

## Tools & Environment

- **LocalStack** – Fully local AWS simulation (zero cost)
- **AWS CLI** – Command-line scripting for AWS services
- **Bash** – Automation scripts
- **GitHub** – Version control & portfolio hosting
- **WSL (Ubuntu)** – Development environment
- **Docker Desktop** - Container
---

## About This Project

This portfolio demonstrates my ability to:
- Understand and work with key AWS services
- Write and manage IAM policies
- Automate infrastructure operations with scripting
- Document and organize cloud administration tasks
- Use LocalStack to simulate AWS safely and efficiently

---

## Contact

**Chijioke Mkparu** 
[LinkedIn Profile](https://www.linkedin.com/in/mkparucj)  
[GitHub Repo](https://github.com/mkparucj/aws-cloud-admin)

---

> *Built entirely without cloud billing — powered by LocalStack and pure CLI.*

