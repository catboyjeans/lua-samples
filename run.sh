#!/bin/bash

# The '@' indicates a file, not a lua chunk of code
export LUA_INIT="@foo.lua"
lua lib1.lua

