# Snorin' 💤 🐟
## Oh-My-Zsh Sorin for Fish!
"Opinionated" (lazy) port of the Oh-My-Zsh "Sorin" theme for the Fish Shell. 

![default prompt](https://raw.githubusercontent.com/LastContinue/snorin/assets/default.png)

## What? Why? Isn't there already a Sorin theme for Fish?
Yes, in fact, there are two just in the main Fish repo alone (and probably an untold amount in the wild!) 

However, I found the one in `fish_config` to be lacking some features (Git), and [the second one](https://github.com/fish-shell/fish-shell/blob/988283c7177d8496f18c1fea1a1007aa8d45d984/share/tools/web_config/sample_prompts/sorin.fish) too complex to understand what was happending (especially when compairing the source for the [oh-my-zsh original](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/sorin.zsh-theme)), so I started hacking.

## Installation

Fisher
```
fisher add lastcontinue/snorin
```

Oh-my-fish
```
omf install https://github.com/lastcontinue/snorin
```

## Features
Puts the Git repo info on the left, on the right it shows Git status
![git repo info](https://raw.githubusercontent.com/LastContinue/snorin/assets/git_stuff1.png)
![more git repo info](https://raw.githubusercontent.com/LastContinue/snorin/assets/git_stuff2.png)

* new files ✭
* modified files ✹
* removed files ✖
* staged files ✚
* file renamed ➜
* unmerged (usually shows up during merge conflict) ═

### Variable support  
![chevron example](https://raw.githubusercontent.com/LastContinue/snorin/assets/chevrons.png)

`snorin_chevrons`  

by default, this prompt will give you one green ❯ symbol (this is how the Oh-My-Zsh Sorin does it)  
However, the "Sorin" themes for Fish usually have three: a red ❯, a yellow ❯, and a green ❯ (something like `❯❯❯`) .  

I decided to let the user chose.  
You can have as many ❯ 's as you want with this theme by setting  

`set snorin_chevrons color1 color2 color3 .. color n`  

For example, I like the red, yellow, green, so I have mine set as  

`set -U snorin_chevrons red yellow green`

**sources**:  
https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/sorin.zsh-theme  
https://github.com/fish-shell/fish-shell/pull/2243  
(I believe this eventually morphed into [this](https://github.com/fish-shell/fish-shell/blob/988283c7177d8496f18c1fea1a1007aa8d45d984/share/tools/web_config/sample_prompts/sorin.fish), however I found this shorter version better as inpiration)