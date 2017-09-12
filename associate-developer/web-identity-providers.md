# Web Identity Providers

Steps to authenticate
1. User first authenticates with Web ID Provider (e.g. Google, Facebook)
2. If successful, User receives Web ID Provider token from Provider
3. app calls AWS's AssumeRoleWithWebIdentity API passing the provider token and ARN of the IAM role that needs access to
4. If successful, app will have access to role for 15-60 minutes (default 1 hour)

Create Role and attach Policy for DynamoDB
1. Create IAM role for Web Identity Provider e.g. "mywebidentityrole"
  - Configure a provider (e.g. Facebook)
2. Create a custom Policy e.g. "myidentityproviderpolicy"
  - copy/paste the Access Control json from DynamoDB table into the Policy
3. From IAM console, attach new policy to the new role
