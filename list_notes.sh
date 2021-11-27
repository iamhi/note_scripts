#!/bin/bash

notes_location=$(head -n 1 "./notes_location.conf")

ls -lt $notes_location
