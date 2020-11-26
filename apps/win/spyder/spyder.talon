os: windows
app.name: pythonw.exe
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


search:
	key(ctrl-f)

netch:
	key(f3)

search in files:
	key(ctrl-shift-f)

	
# Comments
comment out:
	key(ctrl-1)

uncomment:
	key(ctrl-1)


assign:
	insert(" = ")


# Go to a tab using a list (Tab Filter package)
go tab:
	key("ctrl-p")

eval:
	key(ctrl-enter)

eval file:
	key(ctrl-b)