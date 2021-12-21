#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "#/bin/bash

list_notes() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./list_notes.sh
	cd \$current_loc
}

set_notes_location() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./set_notes_location.sh \$1
	cd \$current_loc
}

open_note() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./open_note.sh \$1
	cd \$current_loc
}

show_note() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./show_note.sh \$1
	cd \$current_loc
}

delete_note() {
	current_loc=\$PWD
	cd $SCRIPT_DIR
	./delete_note.sh \$1
	cd \$current_loc
}" > notes_bash_source.sh

chmod +x notes_bash_source.sh
