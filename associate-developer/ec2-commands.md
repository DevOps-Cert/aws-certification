# EC2 Commands

## SSH

`ssh ec2-user@INSTANCE_PUBIC_IP -i PATH-TO-PRIVATE-KEY`

## Package Manager

Install system updates:
`yum install -y`

## Disks

List devices:
`lsblk`

Create filesystem from storage device:
``` shell
lsblk
mkfs -t ext4 /dev/xvdb
mkdir PATH_TO_MOUNT_DIR
mount /dev/xvdb PATH_TO_MOUNT_DIR
lsblk // verify
```
Unmount
`unmount /dev/xvdb PATH_TO_MOUNT_DIR`

Check if volume is empty
`file -s /dev/<volume>`
if anything other than `data` in the output, then there is data on the volume...

## AWS CLI

Configure account
`aws configure`

Show all ec2 instance details in JSON formats
`aws ec2 describe—instances`

Delete instances
`aws ec2 terminate-instances -instance-ids <IDs>`

## EC2 Metadata

Get metadata (not user data from current ec2 instance)

`curl http://169.254.169.254/latest/meta-data/`

Output:
```
ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
hostname
iam/
instance-action
instance-id
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-hostname
public-ipv4
public-keys/
reservation-id
security-groups
```
Get IP address:
`curl http://169.254.169.254/latest/meta-data/public-ipv4`

## SDKs

Available SDKs

aws.amazon.com/tools

- Some SDKs have default regions
  - Java has a default, Node.js does not
  - UE-EAST-1 is always the default if not specified
