#!/bin/bash

case $SHELL in
*/zsh)
	rc_location="$HOME/.zshrc"
	;;
*/bash)
	rc_location="$HOME/.bashrc"
	;;
esac

echo "Installing scripts to $rc_location"

echo "" >> $rc_location
echo "# Source for notes scripts" >> $rc_location
echo "source $PWD/notes_bash_source.sh" >> $rc_location

echo "Installation complete"

echo "Enter notes location"

read notes_location

./set_notes_location.sh ${notes_location/'~'/"$HOME"}

echo "Enter remote service {user}@{hostname}"

read remote_hostname

./set_notes_location.sh ${notes_location/'~'/"$HOME"}

./set_remote_service.sh $remote_hostname

./generate_notes_bash_source.sh
