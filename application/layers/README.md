# een CloudFormation Templates - Application - Nested - Layers

AWS resources for each layer grouped into stacks.

## Layer1 (Authentication Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1

### Description

Single EC2 instance running Go oauth2 proxy.

## Layer2 (Presentation Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1
* rds1

### Description

Single EC2 instance running LAMP consumer application (uses scheduling and results services)

## Layer3 (Scheduling Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1
* rds1

### Description

Single EC2 instance running nodejs scheduling service.

## Layer4 (Plugin Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1

### Description

Single EC2 instance running nodejs plugin service.

## Layer5 (Results Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1
* rds1

### Description

Single EC2 instance running nodejs results service.

## Layer6 (Mitigations Layer)

### Resources

None

### Nested Stacks

* elb1
* subnet1
* rds1

### Description

Single EC2 instance running nodejs mitigations service.
