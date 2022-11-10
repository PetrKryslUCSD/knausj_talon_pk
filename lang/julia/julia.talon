tag: user.julia
-
tag(): user.code_imperative
tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_comment_documentation
tag(): user.code_data_bool
tag(): user.code_functions
tag(): user.code_functions_gui
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"

# state unsafe: "unsafe "

state struct <user.text>:
    insert("struct ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

state enum <user.text>:
    insert("enum ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

toggle use: user.code_toggle_libraries()

state using: "using "
state import: "import "
end: 
    insert("end ")
    key(backspace)
else: insert("else")
state comprehension:
    insert("[index_ for index_ in eachindex(collection)]")
    key(end left:7)
    key("ctrl-d")
state where:
    insert(" where {}")
    key(end left:1)
state for each index:
    insert("for _ in eachindex()")
    key(enter)
    insert("end ")
    key(backspace up)
    key(end left:1)
state for all pairs:
    insert("for (, ) in pairs()")
    key(enter)
    insert("end ")
    key(backspace up)
    key(end left:1)
state for axes:
    insert("for _ in axes()")
    key(enter)
    insert("end ")
    key(backspace up)
    key(end left:1)
state function:
    insert("function ()")
    key(enter)
    insert("end ")
    key(backspace up)
    key(end left:2)


of type: insert("::")
of subtype: insert("<:")
    
doc string: 
    key(home)
    key(enter up)
    insert("\"\"\"")
    key(end enter)
    key(end enter)
    insert("\"\"\"")
    key(up:1)
    insert("    ")
    key("ctrl-v")
    key(end enter)
    key(end enter)
    key(backspace)
test module:
    insert("module mbas001\n")
    insert("using Test\n")
    insert("function test()\n")
    insert("   @test 1 == 1\n")
    insert("   true\n")
    insert("end\n")
    insert("test()\n")
    insert("end\n")

macro fusion: insert("@. ") 
macro assert: insert("@assert ") 
macro history: insert("@history ") 
macro breakpoint: insert("@bp ") 
macro code warn type: insert("@code_warntype ")
macro elapsed: insert("@elapsed ")
macro in bounds: insert("@inbounds ")
macro show: insert("@show ")
macro test: insert("@test ") 
macro time: insert("@time ") 
macro view: insert("@view ")
macro which: insert("@which ")
macro debug: 
    insert("@debug \"\"")
    key(left)
macro info: 
    insert("@info \"\"")
    key(left)
macro warn: 
    insert("@warn \"\"")
    key(left)
macro error: 
    insert("@error \"\"")
    key(left)
macro infiltrate: insert("@infiltrate ")
macro exit: insert("@exit ")
macro continue: insert("@continue ")
