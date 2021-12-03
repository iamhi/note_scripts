#/bin/bash

list_notes() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./list_notes.sh
	cd $current_loc
}

set_notes_location() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./set_notes_location.sh $1
	cd $current_loc
}

open_note() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./open_note.sh $1
	cd $current_loc
}

show_note() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./show_note.sh $1
	cd $current_loc
}

delete_note() {
	current_loc=$PWD
	cd /home/iamhi/Documents/workplace/bash_scripts/notes
	./delete_note.sh $1
	cd $current_loc
}
