# AWS CLI Commands

https://docs.aws.amazon.com/cli/latest/reference/

EC2 commands: https://docs.aws.amazon.com/cli/latest/reference/ec2/

## ec2

### Create new instance

`aws ec2 run-instances --image-id ami-8a7859ef --count 1 --instance-type t2.micro --key-name my-ec2-keypair --security-group-ids sg-68bda301 --subnet-id subnet-101ac65d`

Substitutions required:
- Get image name from an existing instance using `aws ec2 describe-instances`
- replace key-name with your key-pair
- replace security-group-ids
- replace subnet-id

#### Notes

- Don't confuse `run-instances` for creation with `start-instances` for starting _stopped_ instances

### Terminate instance

`aws ec2 terminate-instances --instance-ids <instance-id-1>`


Describe all available images
`aws ec2 describe-images`

## s3

Copy contents of S3 bucket to local storage

`aws s3 cp --recursive s3://acloudguru-nv-mrobbins /home/ec2-user --region us-east-2`

- note `--region` with your execution region is required if region requires Signature Version 4
