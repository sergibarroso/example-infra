module "terraform-backend" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "4.0.0"

  name                     = join("-", var.project_id, "tf-backend")
  project_id               = var.project_id
  location                 = local.country_short_name
  public_access_prevention = true
  set_admin_roles          = true
  admins                   = ["user:spam@example.com,eggs@example.com"]

  versioning = {
    first = true
  }

  custom_placement_config = {
    data_locations : [join("-", local.country_short_name, local.region_short_name)]
  }
}
