
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

number to string
    call tostring(<number>)

tables
    they are associative arrays
    not only through numbers but with any type as key (except nil)
    lua uses tables to represent packages as well
    io.read => get the 'read' entry from the io table (package) 
    
    They are not values nor variables, they are objects

    the program only manipulates references to it

    there is no way to declare a table, we use a 'constructor expression'

    a = {}  => create a table and store its reference in 'a'

    there is no relationships between the variable that holds a reference to the
    table, and the table itself

    when there are no reference to the table, lua's garbage collector deletes it
    
    global variables
        global variables are part of a table as well
        use nil to delete a table's entry

    No size? then when does an array ends?
        At the first nil value

userdata
    allows arbitrary C data to be stored in Lua variables
    It has no pre-defined operations except == and = (equality and assignment)

    not equal / neq
        it is '~=' instead of '!='

boolean
    two tables are the same if their variables point to the same table
    not if their values are the same

Table constructors { }

control structures
    if      then    end
    while   do      end
    repeat  <>      until   <condition>
    for     do      end
        numeric for
            for var=exp1, exp2, exp3 do
                something
            end
        generic for
            iterator loop

Iterators and generic for
    --> https://www.lua.org/pil/7.html
    
Closures 
    A sandbox environment
        A closure keeps the captured variables even after they go out of scope
        The value of the captured value is kept across calls
        So this mechanism involves creating such captured value first

        This usually is achieved through a 'factory' function and the closure itself

Iterator
    --> https://www.lua.org/pil/7.1.html
    An iterator is a closure, that has a table and a state as captures, when called
    it triggers some action on these captured elements, such as traversing across the
    table in a particular way, or applying a function

    The returns of the closure can vary depending on the use-case




