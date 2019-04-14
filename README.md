# give-me-pipenv-zsh
Plugin for ZSH to source Python environments upon `cd`-ing

I kept looking for one that worked well with my setup, but none of them worked when fuzzy-finding a folder using `fzf` modified to use `fd`.

## Why [Pipenv](https://github.com/pypa/pipenv)? 
Because it makes it easier to manage virtual environments and dependencies for each project.

## Why `fzf` and `fd`
Because it be fast as frick boy.

Largely inspired by [Anon-Guy-yapipenv.zsh](https://github.com/AnonGuy/yapipenv.zsh), but 
- checks for `Pipfile` in folder, if found:
    - but another venv is active, then switch over
    - otherwise activate the specified venv
- sets `out` as an alias to deactivate the venv

## Installation instructions
- `cd` into `~/.oh-my-zsh/custom/plugin` and `git clone https://github.com/spramij/give-me-pipenv-zsh.git`
- open `~/.zshrc` and add `give-me-pipenv-zsh` to your plugin list
    - might be different if you're not using oh-my-zsh !

## Extras
- [install `pipenv`](https://pipenv.readthedocs.io/en/latest/install/#installing-pipenv) and [`pipes`](https://pipenv-pipes.readthedocs.io/en/latest/installation.html) on your system
- install [`fzf`](https://github.com/junegunn/fzf) and [`fd`](https://github.com/sharkdp/fd)
- activate the `fzf` plugin for ZSH (just add it to the list of plugins in `.zshrc`)
- add the following to `zshrc`:
    ```zsh
    export FZF_DEFAULT_COMMAND="fd --type f --color always "
    export FZF_DEFAULT_OPTS='--ansi --border'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd --type d"
    ```
- the plugin is compatible with `VSCode`, and `pipes`: run `pipes` to view all current Pipenv environments, select one and you'll teleport to it. Afterwards, press `Ctrl+D` to exit the venv, or `cd` into a project where you know another Pipenv is setup, and it'll switch over
