#!/bin/bash
swipl -q \
      -g 'consult(path)' \
      -g 'bag(R,path(5,1,R),B),write(B),nl.'
