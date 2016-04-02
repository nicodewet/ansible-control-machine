# ansible-control-machine
Vagrant based ansible control machine

## Ansible Vault

  * $ export EDITOR=nano
  * $ ansible-vault create vault.yml
  * $ ansible-vault edit vault.yml
  * $ ansible-vault view vault.yml

## Relevant AWS Resources

  * [How Do I Get Security Credentials?](http://docs.aws.amazon.com/general/latest/gr/getting-aws-sec-creds.html)
  * [Controlling Access To Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingIAM.html)
  * [Finding a Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html)
  
### [Amazon Linux](https://aws.amazon.com/amazon-linux-ami/)

[Amazon Linux AMI 2016.03 Release Notes](https://aws.amazon.com/amazon-linux-ami/2016.03-release-notes/)

  * AMI ID: ami-4c2e0e2f
  * AMI Name: amzn-ami-hvm-2016.03.0.x86_64-s3
  * Owner: 137112412989
  * Source: amzn-ami-ap-southeast-2/amzn-ami-hvm-2016.03.0.x86_64.manifest.xml
  * Status: available
  * State Reason: -
  * Creation date: March 17, 2016 at 12:47:05 PM UTC+13
  * Platform: Amazon Linux
  * Architecture: x86_64
  * Image Type: machine
  * Virtualization type: hvm
  * Description: Amazon Linux AMI 2016.03.0 x86_64 HVM S3
  * Root Device Name: -
  * Root Device Type: instance-store
  * RAM disk ID: -
  * Kernel ID: -
  * Product Codes: -

#### Further Amazon Linux References

[Installing Docker](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html#install_docker)
