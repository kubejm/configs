fish_vi_key_bindings

# scratchpad for quick note taking
alias sp='nvim $HOME/notes/scratchpad-(date +"%m-%d-%Y").md'

# allow for ctrl+f in vi-mode
# https://github.com/fish-shell/fish-shell/issues/3541#issuecomment-260001906
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
    fzf_key_bindings
end

# startup fish in tmux
if status --is-interactive
  tmux ^ /dev/null; and exec true
end

# override ls with exa, if exists
if command -v exa > /dev/null
  abbr -a l 'exa'
  abbr -a ls 'exa'
  abbr -a ll 'exa -l'
  abbr -a lll 'exa -la'
else
  abbr -a l 'ls'
  abbr -a ll 'ls -l'
  abbr -a lll 'ls -la'
end

# golang
set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# npm
set -x PATH $PATH $HOME/.npm-global/bin

# pyenv
#set -x PYENV_ROOT $HOME/.pyenv
#set -x PATH $PATH $PYENV_ROOT/bin
#status --is-interactive; and pyenv init - | source
#status --is-interactive; and pyenv virtualenv-init - | source

# fzf
set -x FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'

# hack
set -x LD_PRELOAD /usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0

# deno
set -x DENO_INSTALL $HOME/.deno
set -x PATH $PATH $DENO_INSTALL/bin

alias fd=fdfind
abbr -a vim 'nvim'

# homebrew
set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;

starship init fish | source
