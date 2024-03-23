####################################################
#  OUTPUT  the instance meta data of json file    #
###################################################
output "instance_metadata_json" {
  value = jsondecode(data.local_file.instance_metadata_file.content)
}
