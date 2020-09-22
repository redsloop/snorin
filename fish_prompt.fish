function fish_prompt -d "Snorin - oh-my-zsh sorin inspired prompt"

  # Main
  printf (set_color cyan)(prompt_pwd)' '

  #Determine if git repo is set...
  if git rev-parse ^ /dev/null
    #still not 100% sure this is correct in case of a rebase conflict...
    git branch -qv | grep "\*" | grep -q detached
    and set -l current_branch (git rev-parse HEAD | cut -c1-7)
    or set -l current_branch (git symbolic-ref --short HEAD)
    or set -l current_branch '???'
    printf (set_color blue)git(set_color brwhite):(set_color red)$current_branch' '


    #take advantage of Fish `String` commands
    for i in (git status --porcelain |
      cut -c 1-2 |
      string trim |
      string replace "AM" "A" |
      string replace "MM" "M" |
      sort |
      uniq)
      switch $i
        # There's quite a few cases missing according to
        # https://git-scm.com/docs/git-status
        # but I tried to cover all of the ones I come across
        # in "normal" usage, as well as trying to keep close
        # to the oh-my-zsh source
        # Always double-check your Git status before commiting
        case "AD"
          #this can happen if you add a file, then delete it after staging the change
          #IMHO these two just cancel each other out
        case "A"
          printf (set_color green)✚' '
        case "D"
          printf (set_color red)✖' '
        case "M"
          printf (set_color blue)✹' '
        case "R"
        case "RM"
          printf (set_color magenta)➜' '
        case "DU"
        case "UU"
          printf (set_color yellow)═' '
              # this is usually a new file... usually
        case "\?\?"
          printf (set_color cyan)★' '
        case "*"
          printf (set_color yellow)◊' '
          #if you start getting this a lot,
          #please open an issue or file a PR
          #I wanted something generic that didn't really mean "good" or "bad"
      end
    end
  end

  # print fun part of prompt
  if test -n "$snorin_chevrons"
    for chevron in $snorin_chevrons
      printf (set_color $chevron)'❯'
    end
    printf ' '
  else
    printf (set_color green)'❯ '
  end
  set_color normal
end
