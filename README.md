#VPNC PS1

##What is this script for ?
This script is for users that want to see the vpnc status in a bash terminal. 
:exclamation:The status will be refreshed each time you execute a command.

##How install it ?
First, clone the project in your home folder.
Then, in your .bashrc file, add the following directive:

```bash
source ~/.vpnc-ps1/vpnc.sh
```
##How can I use it ?

You can use the `__vpnc_ps1` function in your .bashrc file like this :

```bash
PS1="\$(__vpnc_ps1)-[\A]\u@\h:\w\$"
```
Make sure you costumize your prompt after the source directive.
Lauch a new shell session, your prompt should looks like this:

```
!VPN-[15:37]foo@bar:~$
```
See more about how to costumize your prompt :
https://wiki.archlinux.org/index.php/Color_Bash_Prompt

## Changelog:
* **1.0.0:**
  * First release
