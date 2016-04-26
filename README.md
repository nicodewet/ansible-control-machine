# ansible-control-machine

Vagrant based ansible control machine.

Includes a basic AWS provisioning play. 

Run options:

$ ansible-playbook site.yml --ask-vault-pass
$ ansible-playbook site.yml --ask-vault-pass -vvvv
$ ansible-playbook site.yml --ask-vault-pass -vvvv -e "ansible_ssh_private_key_file=/home/vagrant/.ssh/ansible.pem"

## [Ansible Vault](http://docs.ansible.com/ansible/playbooks_vault.html)

  * $ export EDITOR=nano
  * $ ansible-vault create vault.yml
  * $ ansible-vault edit vault.yml
  * $ ansible-vault view vault.yml

Below we run an Ansible play to reproduce our AWS encrypted private key and then we verify (manually at this stage) the fingerprint. The latter entails
comparing the fingerprint stored by AWS (and visible on the EC2 console) with what we have produced.

  * $ ansible-playbook site.yml --ask-vault-pass --tags "configuration" 
  * $ openssl pkcs8 -in ansible_test.pem -inform PEM -outform DER -topk8 -nocrypt | openssl sha1 -c

[Best practice approach for variables and vaults](http://docs.ansible.com/ansible/playbooks_best_practices.html#best-practices-for-variables-and-vaults).

## Relevant Ansible and AWS Resources

  * [Ansible: ec2 module](http://docs.ansible.com/ansible/ec2_module.html)
  * [AWS: How Do I Get Security Credentials?](http://docs.aws.amazon.com/general/latest/gr/getting-aws-sec-creds.html)
  * [AWS: Controlling Access To Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingIAM.html)
  * [AWS: Finding a Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html)
  * [AWS: Amazon EC2 Security Groups for Linux Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
  * [AWS: Amazon EC2 Root Device Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/RootDeviceStorage.html)
  * [AWS: Amazon EC2 Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)

### [Ansible and Docker](https://www.ansible.com/docker)

 * [docker_image - manage docker images](http://docs.ansible.com/ansible/docker_image_module.html)
 * [docker - manage docker containers](http://docs.ansible.com/ansible/docker_module.html)
  
### [Amazon Linux](https://aws.amazon.com/amazon-linux-ami/)

[Amazon Linux AMI 2016.03 Release Notes](https://aws.amazon.com/amazon-linux-ami/2016.03-release-notes/)

#### ami-4c2e0e2f

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

#### ami-d72a0ab4

  * AMI ID: ami-d72a0ab4
  * AMI Name: amzn-ami-hvm-2016.03.0.x86_64-ebs
  * Owner: 137112412989
  * Source: amazon/amzn-ami-hvm-2016.03.0.x86_64-ebs
  * Status: available
  * State Reason: -
  * Creation date: March 17, 2016 at 12:49:32 PM UTC+13
  * Platform: Amazon Linux
  * Architecture: x86_64
  * Image Type: machine
  * Virtualization type: hvm
  * Description: Amazon Linux AMI 2016.03.0 x86_64 HVM EBS
  * Root Device Name: /dev/xvda
  * Root Device Type: ebs
  * RAM disk ID: -
  * Kernel ID: -
  * Product Codes: -
  * Block Devices: /dev/xvda=snap-fa7a5b12:8:true:standard

#### Gotchas

  * AMI 'ami-4c2e0e2f' with an instance-store root device is not supported for the instance type 't2.nano'. 
  * AMI 'ami-4c2e0e2f' with an instance-store root device is not supported for the instance type 't2.micro'.

#### Further Amazon Linux References

[Installing Docker](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html#install_docker)
[Ansible Auto Scaling Tutorial](https://github.com/atplanet/ansible-auto-scaling-tutorial)
