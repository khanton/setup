#!/bin/bash

export USER="khanton"
export NAME="Anton Kholodkov"
export EMAIL="khanton@yandex.ru"
export ZSH_THEME="dpoggi"

BASH=$(which bash)

for file in $(ls chunks.d); do

  ${BASH} ./chunks.d/${file}

done
