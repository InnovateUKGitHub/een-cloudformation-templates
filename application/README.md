# een CloudFormation Templates - Application

AWS resources used for each environment (INTEGRATION/STAGE/PRODUCTION).

## Single stack (single-stack.json)

### Resources

* VPC
* InternetGateway
* InternetVPCGatewayAttachment
* AutoScaleNotificationTopic
* S3BucketLogging
* Shared IAM users/keys
 * S3
 * SES

### Nested Stacks

* 1-presentation (Presentation Layer)
* 2service (Service Layer)

### Description

AWS resources used for each environment (INTEGRATION/STAGE/PRODUCTION).