#!/bin/bash

# Verify ginkgo is installed.
../scripts/install-ginkgo.sh

# Verify Ansible is installed.
# dnf install -y ansible
# ansible-playbook playbook.yml

# export relevant env vars.
export KUBECONFIG_SPOKE1=$(PWD)/helix39-kc.yml
export KUBECONFIG=$(PWD)/helix39-kc.yml
export ECO_VERBOSE_LEVEL=100

# Run powermanagement test.
cd ../tests/ranfunc/powermanagement
ginkgo --focus="Enable powersave at node level and then enable performance at node level"