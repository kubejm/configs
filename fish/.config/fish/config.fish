fish_vi_key_bindings

# scratchpad for quick note taking
alias sp='nvim $HOME/notes/scratchpad-(date +"%m-%d-%Y").md'

# allow for ctrl+f in vi-mode
# https://github.com/fish-shell/fish-shell/issues/3541#issuecomment-260001906
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
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
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PATH $PYENV_ROOT/bin
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# fzf
set -x FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
