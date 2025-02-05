# Understanding Basics of Terraform

Hello,

I started learning Terraform the IaC(Infrastructure as code) tool. So i created a repo to share and store my knowledge for my reference and also it can help any one.

Always its good to learn a tool by doing smaller projects.

## What is Terraform?
- Terraform is Infrastructure provisioning tool that helps in setting up infrastructure on various cloud   platforms and also on on-prem using a human readable configuration files.
- So that we can versionize, reuse and share.
- This configuration files are written in HCL (Hashicorp Configuration Language).
- So it is called as Infrastructure as Code (IaC) tool.

## How it works?
- Terraform creates and manages the resources on different cloud platforms using API
- Terraform has a terraform provider which connects to any platform via an API

![how terraform works](https://developer.hashicorp.com/_next/image?url=https%3A%2F%2Fcontent.hashicorp.com%2Fapi%2Fassets%3Fproduct%3Dterraform%26version%3Drefs%252Fheads%252Fv1.10%26asset%3Dwebsite%252Fimg%252Fdocs%252Fintro-terraform-apis.png%26width%3D2048%26height%3D644&w=3840&q=75&dpl=dpl_p4Nysqhotjj446Y8D3yNpvqRTsq9)

- Already terraform community have written thousands of providers and it is readly available in terraform registry (AWS, Azure, GCP, helm ...)

## Key components:

- **Providers**  
    Providers in terraform are kind of pulgins that interact with the different cloud providers and they act like a bridge between terraform configurations and infrastructure resources.  
    Declaring a provider: 
    ```
    terraform {
        required_providers {
            local = {
                source = "hashicorp/local"
                version = "2.5.2"
            }
        }
    }

    provider "local" {
        # add the configurations for local provider
    }
    ```
    here firstly the terraform block downloads the mentioned required provider here it is local provider from the terraform registery and provider block tell which all providers we are going to be used in this configuration. The best practice is to keep the providers in seperate file called **providers.tf**
- Resources
- Modules
- Variables
- State
- Plan
- Apply
- Provisioners

## Core workflow of Terraform:


![Terraform core workflow](https://developer.hashicorp.com/_next/image?url=https%3A%2F%2Fcontent.hashicorp.com%2Fapi%2Fassets%3Fproduct%3Dterraform%26version%3Drefs%252Fheads%252Fv1.10%26asset%3Dwebsite%252Fimg%252Fdocs%252Fintro-terraform-workflow.png%26width%3D2038%26height%3D1773&w=3840&q=75&dpl=dpl_p4Nysqhotjj446Y8D3yNpvqRTsq9)

## Maintaining folder structure based on best practices:

This is the basic file structure I followed for this simple project. A more detailed folder structure can be implemented when working with different environments (such as dev, stage, and prod) or when maintaining a remote state.
```
.
├── main.tf
├── providers.tf
├── terraform.tfstate
├── terraform.tfvars
└── variables.tf
```



