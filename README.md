# MY-Terraform-scripts
# Terraform Script for Launching EC2 Instance and S3 Bucket

This repository contains a Terraform script for provisioning an EC2 instance and an S3 bucket on a cloud provider such as Amazon Web Services (AWS).

## Prerequisites

- Terraform installed on your local machine.
- AWS account credentials (access key and secret key) with appropriate permissions to create EC2 instances and S3 buckets.

## Getting Started

1. Clone this repository or download the source code.
2. Navigate to the root directory of the project.

## Configuration

1. Create a file named `terraform.tfvars` in the root directory.
2. Open `terraform.tfvars` and provide your AWS credentials and configure the desired settings:

   ```
   access_key = "YOUR_AWS_ACCESS_KEY"
   secret_key = "YOUR_AWS_SECRET_KEY"

   region = "us-west-2"
   instance_type = "t2.micro"
   instance_ami = "ami-0123456789"
   instance_key_pair = "your-key-pair"
   s3_bucket_name = "your-bucket-name"
   ```

3. Save and close the file.

## Provisioning Infrastructure

1. Navigate to the root directory of the project.
2. Initialize the Terraform working directory:

   ```
   terraform init
   ```

3. Preview the changes that will be applied:

   ```
   terraform plan
   ```

4. If the plan looks correct, apply the changes and provision the infrastructure:

   ```
   terraform apply
   ```

5. Confirm the action by entering `yes`.
6. Wait for the provisioning process to complete.
7. Once done, the terminal will display the created resources, including the EC2 instance and S3 bucket details.

## Cleanup

1. Navigate to the root directory of the project.
2. Preview the changes that will be applied during the cleanup:

   ```
   terraform plan -destroy
   ```

3. If the plan looks correct, destroy the infrastructure:

   ```
   terraform destroy
   ```

4. Confirm the action by entering `yes`.
5. Wait for the cleanup process to complete.
6. All the created resources, including the EC2 instance and S3 bucket, will be removed.
