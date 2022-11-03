# ~/.config/fish/functions/nvm.fish
function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

alias ls='exa -l --icons --git --group-directories-first'

#exclude node_modules from search
alias tree='exa -T --icons --git --group-directories-first --level=4 --ignore-glob="node_modules"'
#fzf bat search
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range :500 {}"'

if status is-interactive
    # Commands to run in interactive sessions can go here
end



thefuck --alias | source
