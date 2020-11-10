mode: user.julia
mode: command
and code.language: julia
tag: user.code_operators
-
#pointer operators
#opra dereference: user.code_operator_indirection()
#opra address of: user.code_operator_address_of()
opra arrow: user.code_operator_structure_dereference()
opra fat arrow: insert(" => ")


#lambda
opra lambda: user.code_operator_lambda()

#subscript
opra subscript: user.code_operator_subscript()

#assignment
opra (equals | assign): user.code_operator_assignment()

#math operators
opra (minus | subtract): user.code_operator_subtraction()
opra (minus | subtract) equals: user.code_operator_subtraction_assignment()
opra (plus | add): user.code_operator_addition()
opra (plus | add) equals: user.code_operator_addition_assignment()
opra (times | multiply): user.code_operator_multiplication()
opra (times | multiply) equals: user.code_operator_multiplication_assignment()
opra (divide | divy): user.code_operator_division()
opra (divide | divy) equals: user.code_operator_division_assignment()
opra mod: user.code_operator_modulo()
opra mod equals: user.code_operator_modulo_assignment()
(opra (power | exponent) | to the power [of]): user.code_operator_exponent()

#comparison operators
(opra | logic) equal: user.code_operator_equal()
(opra | logic) not equal: user.code_operator_not_equal()
(opra | logic) (greater | more): user.code_operator_greater_than()
(opra | logic) (less | below) [than]: user.code_operator_less_than()
(opra | logic) greater [than] or equal: user.code_operator_greater_than_or_equal_to()
(opra | logic) less [than] or equal: user.code_operator_less_than_or_equal_to()
(opra | is) in: user.code_operator_in()

#logical operators
(opra | logic) and: user.code_operator_and()
(opra | logic) or: user.code_operator_or()

#bitwise operators
[opra] bitwise and: user.code_operator_bitwise_and()
(opra | logic | bitwise) and equals: user.code_operator_bitwise_and_equals()
[opra] bitwise or: user.code_operator_bitwise_or()
(opra | logic | bitwise) or equals: user.code_operator_bitwise_or_equals()
(opra | logic | bitwise) (ex | exclusive) or: user.code_operator_bitwise_exclusive_or()
(opra | logic | bitwise) (left shift | shift left): user.code_operator_bitwise_left_shift()
(opra | logic | bitwise) (right shift | shift right): user.code_operator_bitwise_right_shift()
(opra | logic | bitwise) (ex | exclusive) or equals: user.code_operator_bitwise_exclusive_or_equals()
[(opra | logic | bitwise)] (left shift | shift left) equals: user.code_operator_bitwise_left_shift_equals()
[(opra | logic | bitwise)] (left right | shift right) equals: user.code_operator_bitwise_right_shift_equals()

#tbd
(opra) loan: " : "
(opra) quest: " ? "

