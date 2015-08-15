# bash/zsh vpnc prompt support
#
# Copyright (C),2015 Florian Gainza <flroian.gainza.prof@gmail.com>
# Distributed under the GNU General Public License, version 2.0.
#
# This script allows you to see vpnc status in your prompt.

# Function to insert in the PS1 variable in order to see the status
# of your vpn conection.
__vpnc_ps1 ()
{
    count=$(vpnvNumberOfProcess)

    if [[ $count -eq "0" ]]; then
        vpnc="!VPN"
    elif [[ $count -eq "1" ]]; then
        vpnc=$(vpncRunningConf)
    else
         vpnc="?"
    fi

    printf $vpnc
}

vpnvNumberOfProcess ()
{
    echo `ps -u root u | grep vpnc | wc -l`
}

vpncRunningConf ()
{
    echo  `ps -u root u | grep vpnc | awk '{print $12}'`
}
