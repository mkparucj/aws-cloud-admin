## Week 3 – IAM Setup with LocalStack

## Goal
Simulate an AWS IAM environment locally using LocalStack and the AWS CLI.  
This lab focused on setting up a user, a group, and attaching an inline policy for S3 access — all without using real AWS resources.

---

## Environment Setup

To avoid pip SSL issues with `awscli-local`, I created a simple alias to simulate it:

````bash
alias awslocal='aws --endpoint-url=http://localhost:4566'
````

## Created a Group

```bash
awslocal iam create-group --group-name devgroup
````

## Created IAM User

````bash
awslocal iam create-user --user-name dev1
````

## Added USer to Group

````bash
awslocal iam add-user-to-group --user-name dev1 --group-name devgroup
````

## Defined Inline Policy

````bash
dev-policy.json
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": ["s3:*"],
    "Resource": "*"
  }]
}
````

## Attached the Policy to the Group

````bash
awslocal iam put-group-policy \
  --group-name devgroup \
  --policy-name S3FullAccess \
  --policy-document file://dev-policy.json
````

## Verified the Attached Policy

````bash
awslocal iam list-group-policies --group-name devgroup
````

## Expected Output

````bash
{
  "PolicyNames": [
    "S3FullAccess"
  ]
}
````

## Key Learnings

IAM is used to securely manage identities and access to AWS services.

Users represent individual identities.

Groups allow collective permission management.

Inline policies are custom permission documents directly attached to a user or group.

LocalStack enables complete AWS simulation without real cloud costs.

## Security Best Practices

Always follow the principle of least privilege — only grant the permissions that are necessary.

Use groups to manage access consistently across multiple users.

Avoid "Action": ["**"] and "Resource": ["**"] in production policies unless absolutely required.

## Outcome

Successfully created and configured:

An IAM group (devgroup)

An IAM user (dev1)

Group membership linking the user to the group

An inline policy granting full S3 access to the group

All tested and validated locally using LocalStack

---

## S3 Operations (Using IAM Permissions)

Tested S3 access with IAM policy attached to the `devgroup`.

## Created S3 Bucket

```bash
awslocal s3api create-bucket --bucket dev-bucket
````

## Uploaded a File

````bash
echo "My name is Chijioke Mkparu, Welcome to my Cloud Journey" > test.txt
awslocal s3 cp test.txt s3://dev-bucket/
````

## Listed Files in the Bucket

````bash
awslocal s3 ls s3://dev-bucket
````

# Output

````bash
2025:06:26  19:06:51    56 test.txt
````
