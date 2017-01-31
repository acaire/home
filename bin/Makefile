.PHONY: all clean
.DEFAULT_GOAL := all
BREW_BIN := /usr/local/bin/

BREW =	ag \
	ansible \
	aws \
	git \
	jq \
	kubectl \
	python \
	tig \
	vault \
	vim \
	zsh \

all:	ec2host iamy $(addprefix $(BREW_BIN),$(BREW))

#$(addprefix $(BREW_BIN),$(BREW)):
#	@echo $?

/usr/local/bin/ag:
	brew install the_silver_searcher

/usr/local/bin/ansible:
	brew install ansible

/usr/local/bin/aws:
	brew install awscli

ec2host:
	curl -L -o ec2host https://raw.githubusercontent.com/acaire/aws-tools/master/ec2host
	echo "9070bbff8aae2e5aa569fbdf589b48f95267df19  ec2host" | shasum -c - && chmod +x ec2host || rm -i ec2host

/usr/local/bin/git:
	brew install git

iamy:
	curl -L -o iamy https://github.com/99designs/iamy/releases/download/v2.0.0/iamy-darwin-amd64
	echo "d8a5a576bccbab45ef79b0a968b801c30611c1f9  iamy" | shasum -c - && chmod +x iamy || rm -i iamy

/usr/local/bin/jq:
	brew install jq

/usr/local/bin/kubectl:
	brew install kubernetes-cli

/usr/local/bin/python:
	brew install python

/usr/local/bin/tig:
	brew install tig

/usr/local/bin/vault:
	brew install vault

/usr/local/bin/vim:
	brew install vim

/usr/local/bin/zsh:
	brew install zsh

clean:
	rm iamy
