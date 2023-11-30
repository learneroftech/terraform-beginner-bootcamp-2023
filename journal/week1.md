# Terraform Beginner Bootcamp 2023 - Week 1
<<<<<<< HEAD
=======

## Root Module Structure

Our root module structure is as follows:

```
PROJECT ROOT
│
├── main.tf             # everything else
├── variables.tf        # stores the structure of input variables
├── terraform.tfvars    # the data of variables we want to load into our Terraform project
├── providers.tf        # defined required providers and their configuration
├── outputs.tf          # stores our outputs
└── README.md           # required for root modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Input Variables

### Terraform Cloud Variables

In terraform we can set two kind of variables: 
- Environment Variables - those you would set in your bash terminal e.g., AWS credentials
- Terraform Variables - those that you would normally set in your tfvars file

We can set Terraform Cloud variables to be sensitive so they are not shown visibly in the UI.

### Loading Terraform Input Variables

[Terraform Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

### var flag
We can use the `-var` flag to set an input variable or override a variable in the tfvars file e.g., `terraform -var user_ud="my-user_id"`

### var-file flag

- TO DO: document this flag

### terraform.tfvars

This is the default file to load in terraform variables in bulk

### auto.tfvars

- TO DO: document this functionality for terraform cloud

### order of terraform variables

- TO DO: document which terraform variable settings take precedence
>>>>>>> 19-create-toc-readme
