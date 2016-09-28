#!/bin/bash

DIR_PREFIX=$(cd "$(dirname "$0")"; pwd)

ln --backup --symbolic $DIR_PREFIX/.bashrc ~/.bashrc
ln --backup --symbolic $DIR_PREFIX/.vimrc ~/.vimrc
