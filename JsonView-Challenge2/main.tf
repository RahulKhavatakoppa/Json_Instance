#╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
# META DATA instance using terraform and commands to get JSON Format Output for KPMG CASE STUDY (NULL resource (CLI command) + Data source to fetch local file + output to get json file) 
#╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

########################################################################
########################################################################
#                                                                      #
# NULL Resource with CLI command to get the meta data of any instance in AZURE #
#                                                                      #
########################################################################
########################################################################

resource "null_resource" "instance_metadata" {
  provisioner "local-exec" {
    command = "az vm list --output json > ${path.module}/instance_metadata.json"
  }
}

######################################
#  DATA source to get the local file #
######################################
data "local_file" "instance_metadata_file" {
  depends_on = [null_resource.instance_metadata]
  filename   = "${path.module}/instance_metadata.json"
}


##### Please refer the file which is created in the JSON Format with the name instnace Meta data.JSON ######################
#### we have many other type of query code using powershell and so on ..
## but here the simplest method i have used is terraform with null resource
## which allows to run the CLI commands into terrform code #####