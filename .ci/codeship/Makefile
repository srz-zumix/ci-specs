
#
# help
#
help: ## show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sed -e 's/^GNUmakefile://' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dockercfg/config.json: credentials.env Makefile ## create dockercfg
	docker run -it --rm \
	--env-file=credentials.env \
	-v "${PWD}:/opt/data/" \
	-v "/var/run/docker.sock:/var/run/docker.sock" \
	codeship/dockercfg-generator /opt/data/dockercfg

dockerconfig.json: Dockerconfig-sample.json dockercfg/config.json
	cat dockercfg/config.json | jq '.auths[].auth' \
		| xargs -I {} sed -e "s/REPLACE_USER_AND_TOKEN/{}/g" Dockerconfig-sample.json > $@

dockercfg.encrypted: dockerconfig.json codeship.aes
	jet encrypt $< $@

env.encrypted: env codeship.aes
	jet encrypt $< $@

secret: dockercfg.encrypted env.encrypted
