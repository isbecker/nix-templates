# nix-templates

This repository contains a collection of templates for nix projects.

## Usage

To use a template, run the following command:

```bash
nix flake init --template "github:isbecker/nix-templates#<template-name>"
```

## Templates

- [python](./python) - A template for python projects. Uses `rye` for dependency management.
- [typescript](./typescript) - A template for typescript projects.
- [cloudflare-worker](./cloudflare-worker) - A template for cloudflare worker projects; currently empty, just a placeholder.

## License

MIT
