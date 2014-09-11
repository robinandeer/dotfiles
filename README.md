# Personal computer configuration.

This is my personal MacBook configuration. There are many like it, but
this one is mine.

For that reason it's largely set up for my particular needs. If you want
to use it yourself I'd recommend reading through it first. Remove as
much as possible and build up, making changes as you go, so it fits your
needs.

### Set up

Intall the Mac OSX "Command Line Tools" which you can search for in the Apple Developer portal under [Downloads](https://developer.apple.com/downloads/).

Run the bootstrap script. This will ensure [Homebrew](http://brew.sh/), and [Ansible](http://docs.ansible.com/) are installed:

    $ ./bootstrap.sh

After installing the prerequisites this will run the `local` playbook
for the first time. The script `configure` is now in `/usr/local/bin`
and you can just execute that script:

    $ configure

It's a shortcut to this command, as it would be run from the
configuration directory:

    $ ansible-playbook install.yml -K

The `-K` flag means that Ansible will prompt you for your sudo password
before it executes the playbook.

If it's your first time, go brew some coffee or tea because this will
take some time building packages.

### Why?

When planning to replace my previous computer I wanted to make sure I
could replicate the environment. More specifically, only the aspects of
the previous environment that I wanted to keep.

GitHub's Boxen looked great but overkill, and I wanted to learn Ansible,
so here we are.

### Fonts
# Fonts
- [ ] Bariol (pay with tweet)
- [x] ClearSans
- [ ] Entypo (only webfont?)
- [ ] FuturaLT
- [x] Inconsolata[-dz for Powerline]
- [ ] Lato
- [ ] Minecrafter_3
- [ ] MyriadPro
- [ ] OpenSans
- [ ] PostinkantajaJob
- [x] Roboto
- [ ] Sauce Code Powerline
- [x] SourceCodePro
- [x] TESLA
- [ ] Weird

### Intended usage

#### Starting a new project
1. Create a repo on GitHub
2. Clone the repo using GitHub for Mac (access to pull request)
  - place the clone in ``~/projects/<repo>``
3. Track the cloned repo by adding it to SourceTree
4. Set up a new Vagrant box for development testing
  - question is how many boxes will fit on one single laptop?

### Credits

The original inspiration was Michael Griffin's
[ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)
repository. That collection is far more complete.

I later borrowed some bootstrap scripting from Daniel Jaouen's
blog post, [How I Fully Automated OS X Provisioning With
Ansible](http://il.luminat.us/blog/2014/04/19/how-i-fully-automated-os-x-with-ansible/).

### License

This work is in the public domain.
