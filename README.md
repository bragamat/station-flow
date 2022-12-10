# Welcome
* This is all [my](https://twitter.com/bragamat_) recipes to setup my developer env! I hope this
fits you well!

## How to use
* Make sure you have ansible installed
* run `ansible-playbook station-setup.yml`
  * ATENTION: When you run the previous command, it will actually install a
    bunch of stuff on/about your terminal. (zshrc, plugins, etc). Use carefully


## Tools
* [Zsh](https://www.zsh.org/)
* [OhMyZsh](https://ohmyz.sh/)
* [Tmux](https://github.com/tmux/tmux)
* [Ansible](https://github.com/ansible/ansible)


## Testing
* Since we are doing a lot of terminal and zshrc stuff, in order to not "hurt"
  your setup, I've created a docker image in which copies the ansible stuff into
  it and then you can just run `ansible-playbook station-setup.yml`

* If you don't want to read anything and just want to see this in action, you
  can simply run `make start-env` and inside the container run `ansible-playbook station-setup.yml`.
