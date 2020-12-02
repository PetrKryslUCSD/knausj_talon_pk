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

netch:
	key(f3)

search in files:
	key(ctrl-shift-f)

go any:
	key(ctrl-p)

go line:
	key(ctrl-g)

go <number>:
	key(ctrl-g)
	insert("{number}")
	key(enter)

# Go to a tab using a list (Tab Filter package)
go tab:
	key("ctrl-shift-x")
	key("ctrl-p")

# Go to a code symbol match in the project
go sym:
	key("ctrl-shift-r")

# Go to a fuzzy match
go fuzz: 
	key("ctrl-shift-r")

# Outdated: Spring to a given line (by number)
#go line <number>:
#	t = clip.text()
#	clip.set_text("{number}")
#	key(ctrl-g)
#	key(ctrl-v)
#	key(enter)
#	clip.set_text(t)

# Switch to the neighboring group (either left or right)
swig: 
	key("ctrl-shift-x")
	key("ctrl-shift-x")

sidebar:
	key("ctrl-k")
	key("ctrl-b")

focus sidebar: key("ctrl-0")

# close file tab
tab close: app.tab_close()

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

wrap: key(alt-q)

action(edit.line_clone):
	key(ctrl-shift-d)

# Swap line up or down
scoot up:
	key(ctrl-shift-up)

scoot down:
	key(ctrl-shift-down)

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

# The following two commands work together to set a mark, move the point 
# to somewhere else, and then extend the selection between the current 
# position of the point and the mark. 
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

# Insert "- " in markdown to make a bullet
bullet:
	key(home)
	insert("- ")
	