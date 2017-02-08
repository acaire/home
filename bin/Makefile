.PHONY: all clean
.DEFAULT_GOAL := all
BREW_BIN := /usr/local/bin/

BREW =	ag \
	ansible \
	aws \
	ctags \
	git \
	jq \
	kubectl \
	python \
	tig \
	vault \
	vim \
	zsh \

all:	iamy $(addprefix $(BREW_BIN),$(BREW))

#$(addprefix $(BREW_BIN),$(BREW)):
#	@echo $?

/usr/local/bin/ag:
	brew install the_silver_searcher

/usr/local/bin/ansible:
	brew install ansible

/usr/local/bin/aws:
	brew install awscli

/usr/local/bin/ctags:
	brew install ctags

/usr/local/bin/git:
	brew install git

/usr/local/bin/gpg:
	brew install gpg

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
