app: winedt
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.tabs
action(app.tab_previous):
	key(ctrl-pageup)
action(app.tab_next):
	key(ctrl-pagedown)
action(code.toggle_comment):
	key(ctrl-q)
action(edit.line_clone):
	key(ctrl-d)
action(edit.line_swap_up):
	key(ctrl-shift-up)
action(edit.line_swap_down):
	key(ctrl-shift-down)
action(edit.indent_more): key(tab)
action(edit.indent_less): key(shift-tab)

search: key(ctrl-f)
netch: key(f3)

go line: key(ctrl-g)

sark: key("alt-f11") 
ex ark: key(ctrl-shift-f11)

compile: key(shift-ctrl-p)

insert equation: 
    insert("~()")
    key(left)
    insert("\\ref{}")

insert ref: 
    insert("\\ref{}")

insert citation: 
    insert("~\\cite{}")

reflow: key(alt-shift-insert)

tit case: key(alt-up)

bookmark set: key("alt-f11") 
bookmark next: key("ctrl-f11")  