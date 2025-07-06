set shell := ["bash", "-uc"]

_default:
    just --list

_install-plugins:
    helm plugin install https://github.com/helm-unittest/helm-unittest.git

_helm-unit-test:
    cd charts/envoy-aigw-provisioner && helm unittest .

_helm-lint:
    cd charts/envoy-aigw-provisioner && helm lint .

pre-commit:
    just _helm-lint
    just _helm-unit-test

helm-package:
    mkdir -p dist
    helm package chart -d dist
