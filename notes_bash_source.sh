#/bin/bash

list_notes() {
	USE_REMOTE=false

	while getopts ":r" ARG; do
	case "$ARG" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes

	if $USE_REMOTE
	then
		./remote_list_notes.sh
	else
		./list_notes.sh
	fi

	cd $current_loc
}

set_notes_location() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./set_notes_location.sh $1
	cd $current_loc
}

set_remote_service() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./set_remote_service.sh $1
	cd $current_loc
}

open_note() {
	USE_REMOTE=false

	while getopts ":r" ARG; do
	case "$ARG" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes

	if $USE_REMOTE
	then
		./remote_open_note.sh $2
	else
		./open_note.sh $1
	fi

	cd $current_loc
}

show_note() {
	USE_REMOTE=false

	while getopts ":r" ARG; do
	case "$ARG" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes

	if $USE_REMOTE
	then
		./remote_show_note.sh $2
	else
		./show_note.sh $1
	fi

	cd $current_loc
}

delete_note() {
	USE_REMOTE=false

	while getopts ":r" ARG; do
	case "$ARG" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes

	if $USE_REMOTE
	then
		./remote_delete_note.sh $2
	else
		./delete_note.sh $1
	fi

	cd $current_loc
}
