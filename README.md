# Welcome to argocd

[![App Status](https://argocd-internal.spirit-dev.net/api/badge?name=argocd&revision=true&showAppName=true)](https://argocd-internal.spirit-dev.net/applications/argocd)

## Table of content

[[_TOC_]]

## Installation process

The installation is entirely managed by Argocd.

A `Makefile` is present here to ease the first and one-time deployment or in case of an issue.
The installation should be done in two steps:

```shell
#> make dry-run ENV=<ENV>
#> make install ENV=<ENV>
```
