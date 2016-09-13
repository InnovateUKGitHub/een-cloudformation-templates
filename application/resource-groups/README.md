# een CloudFormation Templates - Application - Nested - Resource Groups

AWS resources grouped into reusable stacks.

## Subnet (subnet.json)

### Resources

* Subnets:
  * SubnetA (eu-west-1a)
  * SubnetB (eu-west-1b)
* RouteTable
* RouteTableAssociations
  * SubnetARouteTableAssociation
  * SubnetBRouteTableAssociation
* Routes
  * InternetGatewayRoute
  * ManagmentPeeringRoute


### Description

There are actually two subnets in this stack, one in availability zone eu-west-1a and one in zone eu-west-1b. 

This is because the RDS DBSubnetGroup we are using has a minimum requirement of 2 subnets in different availability zones. 

Using two subnets also future proofs us a little if we ever need to scale and wanted to take advantage of availability group failover.

Layer 1 for example:

* SubnetA - eu-west-1a - 10.10.1.0/26 (10.10.1.1 - 10.10.1.62)
* SubnetB - eu-west-1b - 10.10.1.64/26 (10.10.1.65 - 10.10.1.126)

The Layer 2 ingress firewall rule then uses a CIDR block of 10.0.1.0/24 (10.10.1.1 - 10.10.1.254) which grants both of the Layer 1 subnets access.

## ELB (elb.json)

### Resources

* ElasticLoadBalancer
* AutoScaleGroup
* AutoScaleLaunchConfig
* Security Groups:
  * EC2InstanceSecurityGroup1
  * EC2InstanceSecurityGroup2
  * EC2InstanceSecurityGroupLocalSubnet
  * EC2InstanceSecurityGroupManagementVPC
* Alarms
  * CPUAlarmHigh
  * CPUAlarmLow
* Scaling Polices
  * WebServerScaleUpPolicy
  * WebServerScaleDownPolicy

### Description

TODO

## ElastiCache (elasticache.json)

### Resources

* ElasticacheCluster
* ElasticacheClusterSecurityGroup
* ElasticacheClusterSubnetGroup

### Description

TODO

## RDS (rds.json)

### Resources

* DBInstance
* DBInstanceSecurityGroup
* DBInstanceSubnetGroup

### Description

