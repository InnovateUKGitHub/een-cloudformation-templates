# EEN CloudFormation Templates

The CloudFormation templates are structured as follows:
* application
 * main-stack.json
 * nested
   * layers
     * presentation.json
     * service.json
    * resource-groups
      * subnets/
      * elbs/
      * rds.json
      * elasticache.json
* management
    * main-stack.json
* shared
   * iam-resources.json
   * shared-resources.json

The s3-upload.sh bash script uploads the CloudFormation templates to S3 ready for deployment.
