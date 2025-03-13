#!/usr/local/bin/lua
-- LUA Test script
--> taken from https://www.lua.org/pil/contents.html
-- try loading this file through the shell calling 'lua', and calling the command: 'dofile(<filename>.lua)'

-- Test the environment variable through the run.sh script!
-- $ export LUA_INIT="@lib1.lua"
-- $ lua

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

--line = io.read()
--print("Hiii: " .. line .. " " .. tostring(3.0))

-- tables, everything is a table
a = "332"
my_table = { }
my_table[a] = "some rando string"
my_table[332] = 3.1416
print("my_table[\"332\"] = " .. my_table["332"])
print("my_table[332] = " .. my_table[332])

my_table["b"] = "this is b"
-- syntatic sugar => my_table.b = "this is b"

print(my_table.b)
print(my_table.b == my_table["b"])

print("Printing my_table")

for i=4,10 do
    my_table[i] = i*2
end

for k, v in ipairs(my_table) do
    print(k .. " : " .. v)
end

local function _test_or(v)
    local val = v or "default value"
    print("--Value provided =: " .. val)
end

_test_or("hello")
_test_or()

local table_1 = {"Monday", "Tuesday",
                 "Wednesday", "星期四"}

local table_2 = {x=0, y=4}


--{x=0, y=0} => {["x"]=0, ["y"] = 0}

--statements
a, b, c = 1, 2
print(a, b, c)

print("Printing table")
local i = 1
while table_1[i] do
    print(i, table_1[i])
    i = i + 1;
end

-- populate old table beginning from 1
for i=1, 7 do
    my_table[i] = i
end

print("Printing table")
for i,v in ipairs(my_table) do
    print(i, v)
end

print("Printing table")
for i,v in pairs(my_table) do
    print(i, v)
end

-- Reverse test
local function _print_table(t)
    print("--Printing numbers table...")
    for i, v in pairs(t) do
        print(i, v)
    end
end

local table_test = {"One", "Two", "Three", "Four", "Five"}

_print_table(table_test)

table_test_reverse = { }
for i, v in ipairs(table_test) do
    table_test_reverse[v] = i
end

_print_table(table_test_reverse)

-- return statement must always be the last in a block!
local function _break_test()
    print("Excecuting outragious task...")
    -- return -- <= syntax error!
    do return end
    local a = 1
    print("finished!...")
end

_break_test()

-- OOP style function
local function _method(self, x)
    print"--doing function..."
    print("This is x: ", x)
    print("This is my element y:", self.y)
end

local my_oop_object = {foo = _method, y = "I am y!"}

-- oop method call notation
my_oop_object:foo(32)

-- variable arguments
local function _variable_args(...)
    arg = {...}
    print("arg[n] = ", arg.n)
    for i,v in ipairs(arg) do
        print(i, tostring(v))
    end
end

_variable_args(32, 45, 54)

-- function syntatic sugar
local bar = function(arg) print(arg) end
bar("hello!")

-- sandbox closure
local function _create_closure()
    local a = 0
    return function ()
        a = a + 1
        return a
    end
end

print("--Testing closures")
local closure_1 = _create_closure()
print("\tclosure 1")
print(closure_1())
print(closure_1())

local closure_2 = _create_closure()
print("\tclosure 2")
print(closure_2())
print(closure_2())

-- iterators
-- the generic for calls our iterator until it returns nil
print("--iterator test")
local t = {}
for i=1,10 do
    t[i] = i
end

local function _custom_iterator(t)
    local i = 0
    return function ()
        i = i + 1
        return t[i]
    end
end

for element in _custom_iterator(t) do
    print(element)
end
