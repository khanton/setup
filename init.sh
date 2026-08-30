#!/bin/bash


for file in $(ls chunks.d) do 

  . ./chunks.d/${file}

done
