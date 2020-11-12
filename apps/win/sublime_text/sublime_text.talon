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

# Navigation, searching

compal [<user.text>]:
	key(ctrl-shift-p)
	insert(user.text or "")

search:
	key(ctrl-f)

search in files:
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

# Go to a code symbol match in the project
go sym:
	key("ctrl-shift-r")

# Go to a fuzzy match
go fuzz: 
	key("ctrl-shift-r")

# Spring to a given line (by number)
spring <number>:
	clip.set_text(number)
	key(ctrl-g)
	key(ctrl-v)
	key(enter)

# Switch to the neighboring group (either left or right)
swig: 
	key("ctrl-shift-x")
	key("ctrl-shift-x")

sidebar:
	key("ctrl-k")
	key("ctrl-b")

# Re-center the view (watch out: conflicts with Origami)
re-center:
	key("ctrl-k")
	key("ctrl-c")

# For use with multi-cursors.
sword:
	key(ctrl-d)

# Indentation

indent less:
	key(ctrl-[)

(indent more | tabby):
	key(ctrl-])

reindent: 
	key(ctrl-shift-x)
	key(ctrl-r)

no indent:
	key(ctrl-[:6)

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

(uppercase | upcase): 
	key(ctrl-k)
	key(ctrl-u)

(lower | lowercase | downcase): 
	key(ctrl-k)
	key(ctrl-l)

action(edit.line_clone):
	key(ctrl-shift-d)

# Complete Julia code</description>
leet:
	key(ctrl-space)

# Expand the selection to the interior between brackets
ex kets:
	key(ctrl-shift-m)

# Expand the selection to line
ex line:
	key(ctrl-l)

# Expand the selection to scope	
ex cope:
	key(ctrl-shift-space)

(set mark | sark):
	key(ctrl-k)
	key(ctrl-space)

(select to mark | ex ark):
	key(ctrl-k)
	key(ctrl-a)

args:
    insert("()")
    key(left)

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