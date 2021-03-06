question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
# Petr Krysl 2020
hyphen: "-"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
# Petr Krysl 2020
period: "."
(comma and | comm ace): ", "
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
plus: "+"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(inside parens | args):
	insert("()")
	key(left)
inside (squares | list):
	insert("[]")
	key(left)
inside (bracket | braces):
	insert("{}")
	key(left)
inside percent:
	insert("%%")
	key(left)
inside quotes:
	insert('""')
	key(left)
inside (graves | back ticks):
	insert("``")
	key(left)
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(bracket | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste('"{text}"')
(grave | back tick) that:
    text = edit.selected_text()
    user.paste('`{text}`')
