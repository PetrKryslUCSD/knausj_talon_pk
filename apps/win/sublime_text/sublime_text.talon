# app.name: "Sublime Text"
os: windows
title: /- Sublime Text/
-
tag(): user.find_and_replace
tag(): user.line_commands
# tag(): user.multiple_cursors
# tag(): user.snippets
# tag(): user.splits
tag(): user.tabs

compal [<user.text>]:
	key(ctrl-shift-p)
	insert(user.text or "")

go any:
	key(ctrl-p)

go line:
	key(ctrl-g)

go sym:
	key(ctrl-shift-r)

# Go to a tab using a list (Tab Filter package)
go tab:
	key(shift-alt-p)

# For use with multi-cursors.
sword:
	key(ctrl-d)

indent less:
	key(ctrl-[)

indent more:
	key(ctrl-])

# Re-indent selected code
reindent: 
	key(ctrl-shift-x)
	key(ctrl-r)

comment out:
	key(ctrl-/)

uncomment:
	key(ctrl-/)

assign:
	insert(" = ")

# Snippets
if only: 
	insert("bifo")
	key(tab)

if else: 
	insert("bife")
	key(tab)

for loop: 
	insert("frlp")
	key(tab)

comprehension: 
	insert("cmprhn")
	key(tab)

# user.line_commands
action(edit.line_swap_up):
	key(ctrl-ctrl-up)

action(edit.line_swap_down):
	key(ctrl-ctrl-down)

action(edit.line_clone):
	key(ctrl-shift-d)

# user.find_and_replace
action(user.find_toggle_match_by_case):
	key(ctrl-alt-c)

action(user.find_toggle_match_by_word):
	key(ctrl-alt-w)

action(user.find_toggle_match_by_regex):
	key(ctrl-alt-r)

action(user.find_next):
	key(ctrl-g)

action(user.find_previous):
	key(ctrl-shift-g)

action(user.replace_confirm):
	key(ctrl-alt-e)
