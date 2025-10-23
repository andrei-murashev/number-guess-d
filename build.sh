#!/bin/bash

D_FILES=$(find . -type f -wholename "./*/*.d")
ldc2 main.d -I. $D_FILES
