# rust-zsh-completions

Rust completion definitions for zsh including `cargo`, `rls`, `rust-gdb`, `rust-lldb`, `rustc`, `rustdoc`, `rustfmt` and `rustup`.

# Installation

## Using Plugin Manager

You just need to follow the instructions of your plugin manager. If you don't have one yet, I would highly recommend [zplugin](https://github.com/zdharma/zplugin) according to [this comparison](https://gist.github.com/laggardkernel/4a4c4986ccdcaf47b91e8227f9868ded).

For zplugin, add something like this into your `$HOME/.zshrc`

```zsh
zcomp_init () {
    autoload -U +X compinit && compinit
    autoload -U +X bashcompinit && bashcompinit

    # your completion configuration
}

# load 0 second after prompt, and then call zcomp_init() after load this plugin
zplugin ice lucid wait"0" blockf atload"zcomp_init"; zplugin light sainnhe/rust-zsh-completions
```

## Manually

Clone this repository and add the following lines into your `$HOME/.zshrc`

```zsh
export fpath=(path/to/rust-zsh-completions/src $fpath)
autoload -U +X compinit && compinit
```
