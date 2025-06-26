## Week 3 – IAM Setup with LocalStack

## Goal
Simulate an AWS IAM environment locally using LocalStack and the AWS CLI.  
This lab focused on setting up a user, group, and attaching an inline policy for S3 access — all without using real AWS resources.

---

# Environment Setup

To avoid pip SSL issues with `awscli-local`, I created a simple alias to simulate it:

```bash
alias awslocal='aws --endpoint-url=http://localhost:4566'


# Created a Group

awslocal iam create-group --group-name devgroup


# Created a User

awslocal iam create-user --user-name dev1


# Added the User to the Group

awslocal iam add-user-to-group \
  --user-name dev1 \
  --group-name devgroup


# Created an Inline Policy
<Filename: dev-policy.json>
<Location: ~/aws-cloud-admin/week3-iam-s3/dev-policy.json>

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:*"],
      "Resource": "*"
    }
  ]
}


# Attached an Inline Policy to the Group

awslocal iam put-group-policy \
  --group-name devgroup \
  --policy-name S3FullAccess \
  --policy-document file://dev-policy.json


# Verified attached Inline policy to the Group

awslocal iam list-group-policies --group-name devgroup

<Espected Output>

{
  "PolicyNames": [
    "S3FullAccess"
  ]
}


# Key Learnings

IAM is used to securely manage identities and access to AWS services.

Users represent individual identities.

Groups allow collective permission management.

Inline policies are custom permission documents directly attached to a user or group.

LocalStack enables complete AWS simulation without real cloud costs.


# Security Best Practices

Always follow the principle of least privilege — only grant the permissions that are necessary.

Use groups to manage access consistently across multiple users.

Avoid using "Action": ["*"] and "Resource": ["*"] in production policies unless absolutely required.


# Outcome

Created and configured:

An IAM group (devgroup)

An IAM user (dev1)

Group membership linking the user to the group

An inline policy granting full S3 access to the group

Successfully verified the configuration — all tested and validated locally using LocalStack.

