.PHONY: encrypt decrypt deps

export SOPS_AGE_KEY_FILE := ./age.agekey

encrypt: deps
	sops --encrypt --in-place deploy/secrets.yaml

decrypt: deps
	sops --decrypt --in-place deploy/secrets.yaml

deps:
	which sops || (echo "sops is not installed, please install it to use this Makefile" && exit 1)
