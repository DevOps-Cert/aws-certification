# IAM - Identity Access Management

## General

- All roles are global. No need to create/replicate roles in different regions.

## User credentials

- Created for a particular User
- Access Id + Secret Access Id
- Available one time - need to download CSV, distribute to users and securely store it.
- Use it to login to the AWS CLI
  - AWS CLI stores these on the local machine under ~/.aws/credentials
  - Security risk if someone gains access to the EC2 machine then they have the keys to the kingdom

## IAM Roles

- Alternative to User credentials to solve security challenges
