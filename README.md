# Personal computer provisioning
This is my personal MacBook provisioning. There are many like it, but this one is mine. It's also my dotfiles.

For that reason it's largely set up for my particular needs. If you want to use it yourself I'd recommend reading through it first. Then fork, remove as much as possible and rebuild, making changes as you go, so it fits your needs.


### Set up
Run the bootstrap script. This will ensure [Command Line Tools](https://developer.apple.com/downloads/), [Homebrew](http://brew.sh/), and [Ansible](http://docs.ansible.com/) are installed:

```bash
  $ ./bootstrap.sh
```

After installing the prerequisites this will run the `local` playbook for the first time.

To rerun the playbook, in the configuration directory, execute:

```bash
  $ ansible-playbook install.yml
```

If it's your first time, go brew some coffee or tea because this will take some time building packages.


### Why?
When planning to replace my previous computer I wanted to make sure I could replicate the environment. More specifically, only the aspects of the previous environment that I wanted to keep. And I wanted to learn Ansible, so here we are.


### Credits
The original inspiration was Michael Griffin's [ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks) repository. That collection is far more complete.

I later borrowed some bootstrap scripting from Daniel Jaouen's blog post, [How I Fully Automated OS X Provisioning With Ansible](http://il.luminat.us/blog/2014/04/19/how-i-fully-automated-os-x-with-ansible/).


### License
This work is in the public domain.
