Quick start Terraform with Azure Provider:
---------------------------------------
install chocolatey: https://chocolatey.org/install
install pre-requisites via an elevated powershell:
```
choco install make -y
choco install golang -y
choco install azure-cli -y
```
Download terraform.exe ON PATH: https://www.terraform.io/downloads.html
Need to use Git bash to build Terraform Azure provider:
* https://github.com/terraform-providers/terraform-provider-azurerm#building-the-provider

run `az login` (interactively login to Azure via CLI)
then `terraform init` the dir that contains your .tf files (if it's a new project dir: this create the .terraform dir)

__READY TO GO!__