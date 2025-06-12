# Week 1 – Day 4: IAM Users via Script (Simulated)

## 🔧 What This Does
Simulates bulk creation of AWS IAM users and attaching them to policy groups using a bash script.

## 🧪 Script Details
- `create_users.sh`: Reads user-group mapping and:
  - Creates Linux users (e.g. `iam_john`)
  - Creates groups simulating IAM roles (e.g. `s3_readonly`)
  - Assigns each user to a group

## ✅ Example Output
- `iam_jones` → `s3_readonly`
- `iam_dev` → `ec2_ops`
- `iam_admin` → `admin_access`

## 🔐 Simulated IAM Mapping
Using Linux groups as policy roles and `usermod` to assign users, similar to AWS `AttachUserPolicy`.

## 📁 Files Included
- `create_users.sh`
- `README.md`
