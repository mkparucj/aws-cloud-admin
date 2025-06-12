# Week 1 - IAM Basics (Simulated Lab)

## ✅ Simulated IAM Policy
Created a mock IAM policy (sample-policy.json) to allow listing all S3 buckets.

## 👤 Simulated IAM User
Created a Linux user `iam_jones` to simulate AWS IAM user creation with sudo (admin) rights.

## 🛠 Tools Used
- AWS CLI (installed, not yet connected)
- Linux `adduser`, `usermod`
- Git for version control

---

## 🔐 Simulated MFA & IAM Role Switching

### ✅ MFA Simulation
Used `sudo` command to mimic MFA enforcement. Any privileged task prompts for user password.

### 🎭 IAM Role Simulation
Created role-based Linux users:
- `iam_admin`: full privileges (`sudo`)
- `iam_dev`: limited EC2-like ops
- Role-switching done via `su - username`

This simulates AWS STS role assumption and temporary access.
