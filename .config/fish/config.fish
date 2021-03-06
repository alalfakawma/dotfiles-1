fish_vi_key_bindings

function fish_greeting
end

function fish_mode_prompt
  # Disable vi mode indicator
end

function fish_right_prompt
end

alias g="git"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

export FZF_DEFAULT_COMMAND='
  rg --hidden --no-ignore -l -g "!.git" -g "!vendor" -g "!node_modules" ""
'
export FZF_DEFAULT_OPTS='
  --preview="cat {}"
  --height=40%
  --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
  --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
'
export BAT_THEME='base16'

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
