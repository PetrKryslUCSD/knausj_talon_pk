go <user.arrow_keys>: key(arrow_keys)
<user.letter>: key(letter)
# Petr Krysl 2020: Pressing shift
(ship | uppercase) <user.letters> [(lowercase | sunk)]: 
    user.insert_formatted(letters, "ALL_CAPS")
<user.symbol_key>: key(symbol_key)
<user.function_key>: key(function_key)
<user.special_key>: key(special_key)
<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")

