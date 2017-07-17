# AWS Security Groups

## Basics

- All traffic is blocked by default
- Whitelist rules to open specific traffic
- Security Groups have n:m relationship EC2 instances
  - Adding multiple security groups to an instance is additive for allows
- any change applies immediately to your applies
  - e.g. removing the Inbound `http` rule will deny all future traffic on port 80.
- security rules are **stateful** - anything you allow in is allowed out
  - in contrast, Network Access Control Lists (separate topic) are **stateless**


## Default security group

- Allows traffic between itself (your EC2 instances)
  - The source is itself
