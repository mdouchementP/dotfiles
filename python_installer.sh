#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 'Create symbolic links for .pyrc'
ln -s $DIR/.pyrc ~/.pyrc
