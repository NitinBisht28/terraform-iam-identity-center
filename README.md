# IAM Identity Center Terraform Management

This repository manages AWS IAM Identity Center resources with Terraform. It is designed to bring existing manually created Identity Center configuration under code, using a data-driven and import-based workflow.

## Overview

Today, IAM Identity Center access is managed manually in the AWS console. This repository replaces that process with Terraform so identity and access changes can be tracked, reviewed, and reproduced consistently.

The current focus is on managing:

* Users
* Groups
* Group memberships
* Permission sets
* Managed policy attachments
* Customer-managed policy attachments
* Inline permission set policies
* Account assignments

## Goals

* Bring existing IAM Identity Center resources under Terraform control
* Use declarative `import {}` blocks for existing resources
* Keep the first plan clean, with no unwanted creates or destroys
* Maintain a clear source of truth using `locals` maps and `for_each`
* Make identity management repeatable and auditable

## Repository Structure

```bash
.
├── stacks/
│   └── management/
│       ├── stack.tfcomponent.hcl
│       ├── components.tfcomponent.hcl
│       └── deploy.tfdeploy.hcl
└── components/
    └── iam_identity_center/
        ├── locals.tf
        ├── users.tf
        ├── groups.tf
        ├── memberships.tf
        ├── permission_sets.tf
        ├── policies.tf
        ├── account_assignments.tf
        ├── variables.tf
        ├── outputs.tf
        └── imports.tf
```

## Approach

This repository follows a declarative Terraform model:

* `locals.tf` contains the source-of-truth data maps
* `for_each` is used to create resources from those maps
* `imports.tf` contains import blocks for existing AWS resources
* Terraform state is updated through imports rather than manual state editing

This approach is especially important for IAM Identity Center, where the existing setup must be adopted safely without recreating live access configuration.

## Why This Exists

IAM Identity Center was previously managed by hand. That creates several problems:

* No consistent audit trail
* Easy to make mistakes during changes
* Hard to review access changes
* Hard to reproduce the same setup across environments

Terraform solves this by making the configuration versioned, reviewable, and repeatable.

## How It Works

1. Define users, groups, memberships, permission sets, and assignments in Terraform locals.
2. Add import blocks for existing resources.
3. Run Terraform to import resources into state.
4. Verify the plan shows only the expected imports and no unwanted changes.
5. Continue managing future changes through code.

## Important Notes

* Existing Identity Center resources should be imported, not recreated.
* The first apply should result in `0 to add, 0 to change, 0 to destroy` for the imported resources.
* Terraformer is not a good fit for IAM Identity Center resources, so this repo uses native Terraform imports.

## Prerequisites

* Terraform
* AWS credentials with access to IAM Identity Center
* The correct Identity Store ID and IAM Identity Center instance ARN
* Permission to manage Identity Center resources

## Usage

Typical workflow:

```bash
terraform init
terraform plan
terraform apply
```

For existing resources, ensure the corresponding import blocks are present before applying.

## Project Status

This repository is focused on migrating the existing IAM Identity Center setup into Terraform and stabilizing that configuration as code.
