os: windows
and app.name: Python
os: windows
and app.exe: pythonw.exe
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

# Search
search:
	key(ctrl-f)
# Find the next match
netch:
	key(f3)

	
# Comments
comment out:
	key(ctrl-1)

uncomment:
	key(ctrl-1)

assign:
	insert(" = ")


# Go to a tab using a list 
go tab:
	key("ctrl-p")

# To evaluate a selection (note that Spyder must be configured with this key binding)
eval:
	key(ctrl-enter)

# To run file (note that Spyder must be configured with this key binding)
run [file]:
	key(ctrl-b)

