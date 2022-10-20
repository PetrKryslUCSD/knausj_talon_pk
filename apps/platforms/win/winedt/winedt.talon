os: windows
and app.name: WinEdt 10.0
os: windows
and app.exe: WinEdt.exe
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
next match: key(alt-f3)

go line: key(ctrl-g)

sark: key("alt-f11") 
ex ark: key(ctrl-shift-f11)

compile: key(shift-ctrl-p)

latex equation: 
    insert("~()")
    key(left)
    insert("\\ref{}")

latex ref: 
    insert("\\ref{}")

latex citation: 
    insert("~\\cite{}")

reflow: key(alt-shift-insert)

tit case: key(alt-up)

[book] mark set: key("alt-f11") 
[book] mark next: key("ctrl-f11")  