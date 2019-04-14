give-me-pipenv-zsh() {
  #if Pipfile file in new folder
  if [[ -e "$(pwd)/Pipfile" ]];  then 
    venv="$(pipenv --venv)"
    # and current active venv different than the one specified in Pipfile
    if [ -n "${VIRTUAL_ENV}" ] && [[ $venv != "$VIRTUAL_ENV" ]]; then
      echo "Changing venv"
      . $venv/bin/activate
      export VIRTUAL_ENV="$(pipenv --venv )"
    fi
    # otherzise if no active venv
    if [ ! -n "${VIRTUAL_ENV}" ]; then
      echo "Activating venv!"
      . $venv/bin/activate
      export VIRTUAL_ENV="$(pipenv --venv)"
    fi
  fi
}

chpwd_functions+=(give-me-pipenv-zsh)

alias out="unset PIPENV_ACTIVE PIPENV && deactivate && echo 'Left venv!'"
export PIPENV_IGNORE_VIRTUALENVS=1



