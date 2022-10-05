#/bin/bash

hostname=$(head -n 1 "./remote_service.conf")

ssh -t $hostname "
source .bashrc

open_note $1

exit;
"
