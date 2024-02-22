VPC, or Virtual Private Cloud, is a virtual network that is specific to your AWS account and keeps your resources separate and under your control. It is conceptually different from other VPCs, so you can set up your own IP address ranges, subnets, and routing tables.

Subnet 

Subnet is a part of the IP address range for your VPC. Subnets can cross multiple Availability Zones (AZs), so you can spread out your resources to make sure they are always available and can handle problems.

Internet Gateway

Internet Gateway: A gateway that connects your VPC to the internet and can be scaled horizontally and used more than once.

NAT Gateway

NAT Gateway is a controlled network address translation (NAT) service that lets instances in a private area connect to the internet or other AWS services, but stops the internet from connecting to those instances.

Route Table:

Route Table A set of rules, called routes, that tells your VPC where to send network data.

Elastic IP: 

Elastic IP: A public IPv4 address that is always the same and that you can link to an instance, a network device, or a NAT gateway. Elastic IPs help you keep track of your resources that are available to the public and let you remap numbers to other resources in case something goes wrong.


After making and setting these parts, your VPC will have public and private subnets, an Internet gateway for public access, a NAT gateway for private access, custom route tables, and Elastic IPs for static public addresses.


![image](https://github.com/phibiam/AWS-VPC-with-Terraform/assets/24440690/da981936-c9f2-4c65-bed7-a10b24942cb8)
