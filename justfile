set shell := ["bash", "-uc"]

_default:
    just --list

_helm-unit-test:
    cd chart && helm unittest .

_helm-lint:
    cd chart && helm lint .

pre-commit:
    just _helm-lint
    just _helm-unit-test

helm-package:
    mkdir -p dist
    helm package chart -d dist
