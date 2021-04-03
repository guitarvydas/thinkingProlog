#!/bin/bash
swipl -q \
      -g 'consult(path)' \
      -g 'bagof(R,path(5,1,R),B),write(user_output,B),nl.' \
      -g 'halt'
