# Modular `vimrc` for my personal usage

The repo contains the structure and building blocks for a working LSP-powered dev environment based on `vim`.

To run `vim` in an archlinux container

```
make build
make dev EXTRA=/path/to/your/code TARGET=/path/to/your/code/file-to-edit.code
```

# Notes

## Rust

You might want to add this file to the root of your rust projects

```
$ cat .vim-lsp-settings/settings.json
{
    "rust-analyzer": {
        "initialization_options": {
            "cargo": {
                "features": "all"
            }
        }
    }
}
```

to instruct `rust-analyzer` to lint/fix using all the features defined in the `Cargo.toml`.
