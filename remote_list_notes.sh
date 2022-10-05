#/bin/bash

hostname=$(head -n 1 "./remote_service.conf")

ssh $hostname "
source .bashrc

list_notes

exit;
"
