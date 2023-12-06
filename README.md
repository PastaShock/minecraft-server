# Minecraft Server Template

this repository is a project to create a backup and replication system through github.

I should be able to fork this repo and create a separate server with potentially a different version of minecraft and completely separate world files without affecting this repo.

## Install:

### prerequisites:

- Tmux: used to create a detachable terminal that keeps the server visible, but without blocking the any usability of the computer.

### Installing user scripts:

The first script to be installed should be the mcgang.sh.
To 'install' it you should make an entry in the crontab with @reboot for it.
`@reboot . ~/mcgang.sh`

The second file to 'install' should be nightly-server-push.sh, also in the crontab
`0 0 * * * sh nightly-server-push.sh`

now the nightly-server-push.sh and the add-to-log.sh should be chmoded with 555

next the PiMC`_tmux.sh should be aliased in the ~/.bashrc, bash_profile or bash_aliases file to an alias of your choice. My choice is 'pimc'

## Additional Notes:

In the future I want to create a install script so that the set up of this repo as a fork on a clean install could be as simple as setting up a nodejs project with 'node install'
