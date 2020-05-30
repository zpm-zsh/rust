#!/usr/bin/env zsh
# Standarized ZSH polyfills, following:
# https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ $PMSPEC != *f* ]] {
  fpath+=( "${0:h}/functions" )
}

appendpath "${HOME}/.cargo/bin"

local CACHE_DIR="${TMPDIR:-/tmp}/zsh-${UID}"

if [[ ! -f "${CACHE_DIR}/functions/_rustup" ]]; then
  rustup completions zsh > "${CACHE_DIR}/functions/_rustup" 2>/dev/null
fi

if [[ ! -f "${CACHE_DIR}/functions/_cargo" ]]; then
  cp "$(rustc --print sysroot)/share/zsh/site-functions/_cargo" "${CACHE_DIR}/functions/_cargo" 2>/dev/null
fi

