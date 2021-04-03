#!/bin/bash
swipl -q \
      -g 'consult(path)' \
      -g 'use_module(library(http/json))' \
      -g 'bagof(R,path(5,1,R),B),json_write(user_output,B),nl.' \
      -g 'halt'
