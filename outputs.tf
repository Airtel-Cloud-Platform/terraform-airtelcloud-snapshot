output "snapshot_id" {
  description = "Snapshot ID"

  value = airtelcloud_compute_snapshot.this.id
}

output "snapshot_name" {
  description = "Snapshot Name"

  value = airtelcloud_compute_snapshot.this.name
}

output "snapshot_status" {
  description = "Snapshot Status"

  value = airtelcloud_compute_snapshot.this.status
}

output "snapshot_created" {
  description = "Snapshot Creation Timestamp"

  value = airtelcloud_compute_snapshot.this.created
}

output "snapshot_is_active" {
  description = "Whether Snapshot Is Active"

  value = airtelcloud_compute_snapshot.this.is_active
}

output "snapshot_is_image" {
  description = "Whether Snapshot Has Been Converted To Image"

  value = airtelcloud_compute_snapshot.this.is_image
}

output "snapshot" {
  description = "Complete Snapshot Object"

  value = {
    id        = airtelcloud_compute_snapshot.this.id
    name      = airtelcloud_compute_snapshot.this.name
    status    = airtelcloud_compute_snapshot.this.status
    created   = airtelcloud_compute_snapshot.this.created
    is_active = airtelcloud_compute_snapshot.this.is_active
    is_image  = airtelcloud_compute_snapshot.this.is_image
  }
}
