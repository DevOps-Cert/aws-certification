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
