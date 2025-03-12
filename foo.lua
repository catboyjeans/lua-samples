-- This file will be excecuted before loading the called file or when running
-- the lua interpreter
-- This is achieved using the LUA_INIT environment variable
-- export LUA_INIT="@foo.lua"
-- if the '@' is not present, then the environment variable will threat it as 
-- lua code e.g. LUA_INIT="print("loading this!")"

print("--Loading foo.lua!!")
x = 32

