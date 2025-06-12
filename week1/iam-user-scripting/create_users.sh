#!/bin/bash

# Define users and their groups (IAM role simulation)
declare -A USERS
USERS=(
  ["iam_jones"]="s3_readonly"
  ["iam_dev"]="ec2_ops"
  ["iam_admin"]="admin_access"
)

# Create groups first
for group in "${USERS[@]}"; do
  if ! getent group "$group" > /dev/null; then
    sudo groupadd "$group"
    echo "Created group: $group"
  fi
done

# Create users and assign to groups
for user in "${!USERS[@]}"; do
  if id "$user" &>/dev/null; then
    echo "User $user already exists."
  else
    sudo adduser --disabled-password --gecos "" "$user"
    sudo usermod -aG "${USERS[$user]}" "$user"
    echo "Created user: $user and added to group: ${USERS[$user]}"
  fi
done
