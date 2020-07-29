#!/usr/bin/env zsh

if (( $+functions[zpm] )); then #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE
  zpm load zpm-zsh/helpers #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE
fi #DO_NOT_INCLUDE_LINE_IN_ZPM_CACHE

if (( $+commands[rustc] )); then
  # Standarized ZSH polyfills, following:
  # https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
  0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
  0="${${(M)0:#/*}:-$PWD/$0}"

  if [[ $PMSPEC != *f* ]] {
    fpath+=( "${0:h}/functions" )
  }

  appendpath "${HOME}/.cargo/bin"

  if [[ ! -f "${0:h}/functions/_rustup" ]]; then
    rustup completions zsh > "${0:h}/functions/_rustup" #2>/dev/null
  fi
  if [[ ! -f "${0:h}/functions/_cargo" ]]; then
    cp "$(rustc --print sysroot)/share/zsh/site-functions/_cargo" "${0:h}/functions/_cargo" # 2>/dev/null
  fi
fi
