
doc:
	echo "Creating Terraform Docs" && docker run --rm --volume "${PWD}":/terraform-docs quay.io/terraform-docs/terraform-docs:0.16.0 --lockfile=false markdown --hide-empty /terraform-docs > README.md

check:
	terraform init && terraform fmt -diff -check && terraform validate && shellcheck *.sh
