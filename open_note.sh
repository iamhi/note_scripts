#!/bin/bash

notes_location=$(head -n 1 "./notes_location.conf")

nvim $notes_location/$1
