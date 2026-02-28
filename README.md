# Zed Agda

An [Agda](https://agda.readthedocs.io/en/latest/getting-started/what-is-agda.html) extension for [Zed](https://zed.dev).

- Tree-sitter: [tree-sitter-agda](https://github.com/tree-sitter/tree-sitter-agda)
- Language Server: [Agda Language Server](https://github.com/agda/agda-language-server)

## Installation

This extension requires both the Agda compiler and the Agda Language Server (ALS) to be installed on your system.
First, ensure you have the Agda Standard Library and the Language Server installed. I recommend using stack to ensure compatibility with your system's GHC version.

```sh
git clone https://github.com/agda/agda-language-server.git
cd agda-language-server
stack install
```

## TODO list

- Implement agda-mode for Zed (not really doable until Zed Extension API does not support custom
RPC commands)

## Contributing

PRs are absolutely welcome. 

## Development

To develop this extension, see the [Developing Extensions](https://zed.dev/docs/extensions/developing-extensions) section of the Zed docs.
