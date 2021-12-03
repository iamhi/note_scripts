#!/bin/bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo Setting locaiton: $1

echo $1 > notes_location.conf
echo $SCRIPT_DIR >> notes_location.conf
