# Application : CHALLENGE2 - JSON FORMAT META DATA OF AN INSTNACE WITH AZURE

## Terraform Azure Instance Metadata Query

## Overview
This Terraform project aims to demonstrate how to query metadata of an instance within Azure using Terraform's local-exec provisioner and Azure CLI. The project showcases how to execute Azure CLI commands from within Terraform, save the output as JSON, and then parse and use the JSON data within Terraform.

## Features
Uses Terraform to manage infrastructure as code.
Uses the local-exec provisioner to execute Azure CLI commands.
Retrieves metadata of an Azure VM instance.
Saves the metadata in JSON format for further processing.
Verify that the instance_metadata.json file is created and contains the instance metadata.
Explore the parsed JSON metadata using Terraform outputs or further processing in your workflow.

## Dependencies
This project has the following dependencies:
Terraform
Azure CLI
Access to an Azure subscription with appropriate permissions to query instance metadata.

## IaC Details

| Azure Resource             | Count | Resource Description |
|----------------------------|-------|--------------------- |
| NULL Resource              |   1   | The application Main null resource to run the CLI Command|
| DATA Scource               |   1   | The application Main data block to get the local file or json value|
| OUTPUT variable            |   1   | The application output provides the JSON formatted output|


### To deploy resources 
-Install Azure CLI:
Ensure that you have the Azure CLI installed on your machine. You can download and install it from the official Azure CLI documentation: Install Azure CLI.

Authenticate to Azure:
Log in to your Azure account using the Azure CLI. Run the following command and follow the prompts to authenticate: az login

Create a Terraform Configuration:
Initialize a new Terraform configuration:
terraform init

Run Terraform Commands:
Use Terraform commands to plan and apply your configuration. Run terraform plan to see the execution plan and verify the changes that Terraform will make:
terraform plan

If the plan looks good, apply the changes using terraform apply: terraform apply

Clean Up Resources (Optional):
If you want to remove the resources created by Terraform, you can use the terraform destroy command:terraform destroy

Exit Azure CLI Session:
After completing your tasks, you can exit the Azure CLI session:az logout
