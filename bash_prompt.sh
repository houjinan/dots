source ~/.dots/colors.theme.bash

function __git_dirty {
  git diff --quiet HEAD &>/dev/null 
  # git status &>/dev/null
  [ $? == 1 ] && echo " ✗ "
}

function __git_branch {
  __git_ps1 "(%s)"
}

function __my_rvm_ruby_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" == "1.8.7" ] && version=""
  local full="$version$gemset"
  [ "$full" != "" ] && echo "$full"
}

# via http://tammersaleh.com/posts/a-better-rvm-bash-prompt
bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  PS1="\n${bold_yellow}[\$(__my_rvm_ruby_version)] ${bold_cyan}\w ${bold_green}\$(__git_branch)${bold_red}\$(__git_dirty)${NONE}\n ${bold_purple}→  ${NONE}"
}

bash_prompt
