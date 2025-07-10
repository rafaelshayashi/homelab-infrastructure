
ifneq (,$(wildcard ./.env))
    include .env
    export
else
	export REMOTE_USER=?$(USER)
endif

run:
	run-install run-config run-enable

run-install:
ifdef REMOTE_USER
	ansible-playbook --user $(REMOTE_USER) --inventory inventory.yaml install.yaml
else
	$(error the REMOTE_USER should be defined)
endif


run-config:
ifdef REMOTE_USER
	ansible-playbook --user $(REMOTE_USER) --inventory inventory.yaml config.yaml
else
	$(error the REMOTE_USER should be defined)
endif

run-enable:
ifdef REMOTE_USER
	ansible-playbook --user $(REMOTE_USER) --inventory inventory.yaml enable.yaml
else
	$(error the REMOTE_USER should be defined)
endif