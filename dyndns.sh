# Config cmds that will allow Edgerouter to update eth0 (wan) IP to dynamic dns service at namecheap
configure
set service dns dynamic interface eth0 service namecheap server dynamicdns.park-your-domain.com
set service dns dynamic interface eth0 service namecheap host-name @
set service dns dynamic interface eth0 service namecheap login home.misuse.org
set service dns dynamic interface eth0 service namecheap password [key from namecheap]
commit
save
exit
update dns dynamic interface eth0
show dns dynamic status

