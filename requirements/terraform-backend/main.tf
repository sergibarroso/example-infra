module "terraform-backend" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "4.0.0"

  names                    = [join("-", [var.project_id, "tf-backend"])]
  project_id               = var.project_id
  location                 = local.country_short_name
  public_access_prevention = "inherited"
  set_admin_roles          = true
  admins                   = [join("", ["user:", data.google_client_openid_userinfo.current.email])]
  force_destroy = { true = true }

  versioning = {
    join("-", [var.project_id, "tf-backend"]) = true
  }

  custom_placement_config = {
    data_locations : [join("-", [local.country_short_name, local.region_short_name])]
  }
}
