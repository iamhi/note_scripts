#!/bin/bash

notes_location=$(head -n 1 "./notes_location.conf")

cat $notes_location/$1
