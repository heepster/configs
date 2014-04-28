function fish_prompt

  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end

  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined

    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end
	
    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)
  set -l green (set_color green)

  set -l arrow "$red➜ "
  set -l cwd   $cyan(basename (prompt_pwd))
  set -l user  $green$USER
  set -l name  "ŏdyssęy"
  #set -l name  "קַדְמִיאֵל"
  set -l host  $blue$name
  #set -l sign  "ʄ"
  #set -l sign  "Ϡ"
  #set -l sign  "ӝ"
  #set -l sign  "ऒ "
  set -l sign "ଓ"
  set -l at    " $yellow$sign "
  set -l dot   "$red ० "
  set -l dot   "$green ჻ "

  if [ (_git_branch_name) ]
    set -l git_branch $green(_git_branch_name)
    set git_info "$blue⎝ $git_branch$blue⎞"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end
  
  set -l is_git (git remote -v > /dev/null 2>&1; echo $status)
  if [ "$is_git" -ne "128" ]
    set repo (git remote -v | grep origin | awk 'NR==1 {print $2}' | cut -d / -f 2)
    set path $red$repo$normal
  else
    set path $red$cwd$normal
  end

  echo -n -s $user$at$host $dot $path $git_info $normal ' ۺ  '

end
