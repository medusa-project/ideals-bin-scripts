Clone this into $HOME/bin, then link the $HOME/svc_hooks subdirectory to
$HOME/bin/svc_hooks.

Copy /etc/init.d/ideals from this repository to /etc/init.d/ideals on server, ensure executable

Everything that you might want to configure should be set in env.sh, which
the other scripts source. If something isn't, it should be.

The scripts to be called by cron in this repo are:
<br>- trim_sessions.sh
