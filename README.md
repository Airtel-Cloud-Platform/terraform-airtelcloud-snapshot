# Airtel Cloud Compute Snapshot Terraform Module

Terraform module for provisioning Airtel Cloud Compute Snapshots.

## Features

- Creates point-in-time snapshots of Virtual Machines
- Supports snapshot lifecycle management through Terraform
- Exposes snapshot metadata for downstream automation

## Usage

### Basic Example


```hcl
module "snapshot" {
  source = "Airtel-Cloud-Platform/snapshot/airtelcloud"

  compute_id = "compute-id"
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| compute_id | Compute Instance ID to snapshot | string | Yes |

## Outputs

| Name | Description |
|------|-------------|
| snapshot_id | Snapshot ID |
| snapshot_name | Snapshot Name |
| snapshot_status | Snapshot Status |
| snapshot_created | Snapshot Creation Timestamp |
| snapshot_is_active | Whether Snapshot Is Active |
| snapshot_is_image | Whether Snapshot Has Been Converted To Image |
| snapshot | Complete Snapshot Object |

## Notes

Snapshots are immutable point-in-time copies of a Virtual Machine.

Deleting the Terraform resource removes the snapshot from Airtel Cloud.

## Requirements

| Name | Version |
|------|---------|
| Terraform | >= 1.5 |
| airtelcloud Provider | >= 1.0.4 |
