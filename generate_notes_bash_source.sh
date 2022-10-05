#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "#/bin/bash

list_notes() {
	USE_REMOTE=false

	while getopts \":r\" ARG; do
	case \"\$ARG\" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=\$PWD
	cd $SCRIPT_DIR

	if \$USE_REMOTE
	then
		./remote_list_notes.sh
	else
		./list_notes.sh
	fi

	cd \$current_loc
}

set_notes_location() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./set_notes_location.sh \$1
	cd \$current_loc
}

open_note() {
	USE_REMOTE=false

	while getopts \":r\" ARG; do
	case \"\$ARG\" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=\$PWD
	cd $SCRIPT_DIR

	if \$USE_REMOTE
	then
		./remote_open_note.sh \$2
	else
		./open_note.sh \$1
	fi

	cd \$current_loc
}

show_note() {
	USE_REMOTE=false

	while getopts \":r\" ARG; do
	case \"\$ARG\" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=\$PWD
	cd $SCRIPT_DIR

	if \$USE_REMOTE
	then
		./remote_show_note.sh \$2
	else
		./show_note.sh \$1
	fi

	cd \$current_loc
}

delete_note() {
	USE_REMOTE=false

	while getopts \":r\" ARG; do
	case \"\$ARG\" in
		r)
			USE_REMOTE=true
			;;
		esac
	done

	current_loc=\$PWD
	cd $SCRIPT_DIR

	if \$USE_REMOTE
	then
		./remote_delete_note.sh \$2
	else
		./delete_note.sh \$1
	fi

	cd \$current_loc
}" > notes_bash_source.sh

chmod +x notes_bash_source.sh
