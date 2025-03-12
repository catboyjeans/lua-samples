
Global variables need not to be declared, they just lie there with a 'nil' value
Delete a global variable by assigning the nil value

The stand-alone interpreter
    lua.c
        it is a small program that allows the use of the lua interpreter

Datatypes
    nil
    boolean
    number
    string
    userdata
    function
    thread
    table

nil
    nil is a type with a single value: nil

booleans
    false and nil are false
    everything else is true

no float
    lua has only a single number type, representing double precision 
    floating point numbers

strings
    inmutable values, you have to create a new string

    coercions
        lua converts the strings to numbers whenever numbers are expected

        Explicitly it can be achieved throug 'tonumber()' function

    concatenate 
        the '..' concatenates a string and a number in lua


