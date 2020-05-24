# rust-zsh-completions

Rust completion definitions for zsh including `cargo`, `rls`, `rust-gdb`, `rust-lldb`, `rustc`, `rustdoc`, `rustfmt` and `rustup`.

## Installation

### This plugin depends on [zsh helpers](https://github.com/zpm-zsh/helpers)

If you don't use [zpm](https://github.com/zpm-zsh/zpm), install it manually and activate it before this plugin.
If you use zpm you don’t need to do anything

### If you use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

- Clone this repository into `~/.oh-my-zsh/custom/plugins`

```sh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zpm-zsh/rust
```

- After that, add `rust` to your oh-my-zsh plugins array.

### If you use [Zgen](https://github.com/tarjoilija/zgen)

1. Add `zgen load zpm-zsh/rust` to your `.zshrc` with your other plugin
2. run `zgen save`

### If you use my [ZPM](https://github.com/zpm-zsh/zpm)

- Add `zpm load zpm-zsh/rust` into your `.zshrc`
