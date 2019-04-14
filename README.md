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
- `cd` into `~/.oh-my-zsh/custom/plugin` and `git clone https://github.com/spramij/give-me-pipenv-zsh.git:give-me-pipenv-zsh`
- open `~/.zshrc` and add `give-me-pipenv-zsh` to your plugin list
    - might be different if you're not using oh-my-zsh !
