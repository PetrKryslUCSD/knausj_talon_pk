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

find:
	key(ctrl-f)

find in files:
	key(ctrl-shift-f)

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

# Indentation
indent less:
	key(ctrl-[)

indent more:
	key(ctrl-])

reindent: 
	key(ctrl-shift-x)
	key(ctrl-r)

# Comments
comment out:
	key(ctrl-/)

uncomment:
	key(ctrl-/)

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

where:
	insert("whra")
	key(tab)

# Miscellaneous editing

action(edit.line_clone):
	key(ctrl-shift-d)

assign:
	insert(" = ")

struct:
	insert("struct  end")
	key(left:4)

of type:
	insert("::")

of subtype:
	insert("<:")

float 64:
	insert("Float64")

integer 64:
	insert("Int64")

Bool:
	insert("Bool")