# zsh prompt - from https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %F{yellow}%n%f@%F{green}%m%f %B%F{blue}%~%f%b %# '
RPROMPT='⏱ %*'

precmd() {
	# echo -en "\033];zsh:${PWD}\007"
    echo -ne "\033]0;zsh:${PWD}\007"
}

# aliases
alias cribs='neovide --fork ~/Library/Mobile\ Documents/com~apple~CloudDocs/Work/Cribs/'
alias nvim='neovide --fork'
# alias view='neovide --fork -- -R'
alias outlook='2>/dev/null msgconvert --outfile - '

PATH="/Users/rbringman/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/rbringman/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/rbringman/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/rbringman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/rbringman/perl5"; export PERL_MM_OPT;
