#!/bin/bash

for file in $(ls *)
do 
  vi +':w ++ff=unix' +':q' ${file}
done
