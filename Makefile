PACKAGE=github.com/rebuy-de/aws-nuke

include golang.mk

.PHONY: shell
shell: 
	@docker run --rm -it -v ~/meliuz/aws-nuke/config:/home/aws-nuke/config -v ~/meliuz/aws-nuke/output:/home/aws-nuke/output -v ~/.aws:/home/aws-nuke/.aws --entrypoint "" --workdir "/home/aws-nuke" rebuy/aws-nuke:v2.17.0 sh
