# Static Website on AWS using Terraform
This Project is required to deploy a static website using Amazon S3 bucket for storage, Cloudfront distribution to enhance delivery, and Route53 for domain management. All of these should be deployed and managed with Terraform.

### STEP ONE
The first step I took was to create the file structure for the terraform code. The project is required to use modules to manage the various resources included in the project. These modules help store resources that work together in a reuseable format.

### STEP TWO
With the appropriate file structure I started with creating the S3 bucket to host the files for the website. I wrote a terraform code to this effect.

### STEP THREE
The next thing would be to declare the CloudFront resource and point it back to the S3 bucket. I made use of variables to enable me pass the S3 bucket name and ID into the CloudFront module. It was also neccessary to copy the bucket policy from the CloudFront OAC into the S3 bucket.

### STEP FOUR
Once the code for the CloudFront had been completed I proceeded to write the terraform code used to create a Route53 hosted zone. I made sure to input the domain name generated after the cloudfront would have been created. This will enable me redirect traffic into a specified domain name.

### STEP FIVE
At this point I went ahead to declare the resource that generates the certificate which will be passed into the Route53 and CloudFront resources.
while building this code I made sure to use variables and descriptions to enhance useability and readability of the entire terraform code.

### STEP SIX
Finally I declared the modules in the parent `main.tf` file with their appropriate variables. 

This script will successfully host a static website on a custom domain name using Amazon S3 buckets, CloudFront, Route53, and the required certifications all deployed and managed by Terraform.
