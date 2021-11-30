mode: user.julia
mode: command
and code.language: julia
-
# TODO: functions

tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_addition): " + "
action(user.code_operator_multiplication): " * "
action(user.code_operator_exponent): "^"
action(user.code_operator_division): " / "
action(user.code_operator_modulo): " %% "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_in): " in "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_structure_dereference): " -> "
action(user.code_null): "nothing"
action(user.code_state_if):
    insert("if condition")
    key(enter)
    insert("end")
    key(up:1 end left:4)
    key("ctrl-d")
action(user.code_state_else):
    insert("else")
    key(enter)
action(user.code_state_for):
    insert("for index_ in eachindex(collection)")
    key(enter)
    insert("end")
    key(up:1 end left:7)
    key("ctrl-d")
action(user.code_state_while):
    insert("while condition")
    insert("end")
    key(up:1 end left:7)
    key("ctrl-d")
state using <user.text>:
    insert("using ")
    insert(text)
action(user.code_import):
    insert("import ")
action(user.code_comment): "# "
action(user.code_state_return):
   insert("return ")
action(user.code_break): "break"
action(user.code_next): "next"
action(user.code_true): "true"
action(user.code_false): "false"
state comprehension:
    insert("[index_ for index_ in eachindex(collection)]")
    key(end left:7)
    key("ctrl-d")
state where:
    insert(" where {}")
    key(end left:1)
dock string: 
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
    insert("end\n")
    insert("using .mbas001\n")
    insert("mbas001.test()\n")


# Julia specific commands

pair it: 
    insert(" => ")

arrow it: 
    insert(" -> ")

end: 
    insert("end")

^funk <user.code_functions>:
    user.code_insert_function(code_functions, "")

macro fusion: insert("@. ") 
macro assert: insert("@assert ") 
macro history: insert("@history ") 
macro breakpoint: insert("@bp ") 
macro code warn type: insert("@code_warntype ")
macro elapsed: insert("@elapsed ")
macro in bounds: insert("@inbounds ")
macro info: insert("@info ")
macro show: insert("@show ")
macro test: insert("@test ") 
macro time: insert("@time ") 
macro view: insert("@view ")
macro which: insert("@which ")
macro warn: insert("@warn ")

# Change to the folder of the open file
to folder:
    key("ctrl-shift-x")
    key("ctrl-f")

# Run the open file by include(). Save the file first.
run:
    key("ctrl-s")
    key("ctrl-shift-x")
    key("ctrl-e")

# Ask for help on item
hint:
    key("ctrl-shift-x")
    key("ctrl-alt-h")

# Comments
toggle comment:
    key(ctrl-/)
 
# Re-wrap: requires the Rewrap extension 
reflow:
    key(alt-q)

# A few useful shortcuts
struct:
    insert("struct  end")
    key(left:4)

of type:
    insert("::")

of subtype:
    insert("<:")

float <number>:
    insert("Float{number}")

integer <number>:
    insert("Int{number}")

Bool:
    insert("Bool")
