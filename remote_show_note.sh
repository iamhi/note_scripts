#/bin/bash

hostname=$(head -n 1 "./remote_service.conf")

ssh $hostname "
source .bashrc

show_note $1

exit;
"
