
all: test check

.PHONY: build
build: test
	opa build -b terraform/ --optimize=1 -o _build/terraform.tar.gz

.PHONY: test
test: verify
	opa test . -v

.PHONY: verify
verify:
	conftest verify --policy ./terraform

.PHONY: gen_tf_plan
gen_tf_plan:
	@./scripts/gen_tf_plan.sh


# This are used to test various commands
pull_tf_bundle:
	conftest pull git::https://github.com/xNok/demo-open-policy-agent.git//terraform

pull_tf_bundle_and_test:
	conftest test --update git::https://github.com/xNok/demo-open-policy-agent.git//terraform 
