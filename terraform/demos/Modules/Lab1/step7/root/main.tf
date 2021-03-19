// Starting point
// Make sure all the resources are created correctly

module "hello_app0" {
  source = "../modules/server"
  instance_type = var.instance_types[0]
  app_name = var.app_names[0]
  sg_groups = module.SecGrp.secgps
}

module "hello_app1" {
  source = "../modules/server"
  instance_type = var.instance_types[1]
  app_name = var.app_names[1]
    sg_groups = module.SecGrp.secgps
}

module "SecGrp" {
  source = "../modules/sg"
  access_port = 8080
  sg_name = "Hello SG"

  

}
