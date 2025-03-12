#!/usr/local/bin/lua
-- LUA Test script
--> taken from https://www.lua.org/pil/contents.html
-- try loading this file through the shell calling 'lua', and calling the command: 'dofile(<filename>.lua)'

-- Testing the LUA_INIT environment variable trough bash:
-- $ export LUA_INIT="@lib1.lua"
-- $ lua
print("lib1 loaded !")

-- This function is local to the current chunk, aka. this file
local function foo()
    local x = 32;
    print("Excecuting foo(): ")
    print(x)
end

-- This function is local to the current chunk, aka. this file
function bar()
    local x = 32;
    print("Excecuting bar(): ")
    print(x)
end


-- Comments
--[[ 
    This is a long block-comment
--]]

a = "hello"
a = 32

-- command line arguments
-- they are stored in the 'arg' variable
print("Printing cli arguments")
print(arg[0])
print(arg[1])

-- Getting the type of a value
print(type(a))
print(type("hello"))
-- always a string since type -> string
print(type(type(a)))

-- long literal strings do not interpret escape secuences as you can see...
local long_literal_string = [[ hello
this is 
a long \t\t\n
literal string!]]

print(long_literal_string)

line = io.read()

