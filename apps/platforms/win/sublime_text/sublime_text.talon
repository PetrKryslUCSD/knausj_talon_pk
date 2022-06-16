os: windows
and app.name: Sublime Text
os: windows
and app.exe: sublime_text.exe

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

(netch | next match):
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

# Go to a code symbol match in the project or locally in a source file
go symbol:
	key("ctrl-shift-r")
go local [symbol]:
    key("ctrl-r")

# Go to a definition
go def:
    key("f12")
    #key("ctrl-shift-x")
    #key("ctrl-shift-d")
        
# Go to mark: swap current position with the mark
go ark:
    key(ctrl-k)
    key(ctrl-x)

# Outdated: Spring to a given line (by number)
#go line <number>:
#	t = clip.text()
#	clip.set_text("{number}")
#	key(ctrl-g)
#	key(ctrl-v)
#	key(enter)
#	clip.set_text(t)

# Switch focus to the neighboring group (either left or right)
swig: 
	key("ctrl-shift-x")
	key("ctrl-shift-x")

# Move view to group (column) <number>
cast column <number>:
    key("ctrl-shift-{number}")

# Toggle sidebar
sidebar:
	key("ctrl-k")
	key("ctrl-b")

focus sidebar: key("ctrl-0")

# Switch to single column layout
single column: key("alt-shift-1")

# Switch to two-column layout
two columns: key("alt-shift-2")

# Focus column
focus column  <number>:
    key("ctrl-{number}")

# Operating on Tabs
# close file tab
tab close: app.tab_close()
tab previous:
    key(ctrl-shift-tab)
tab next:
    key(ctrl-shift-tab)

# Jumping about
jump previous: key(alt--)
jump next: key("alt-shift--")

# Re-center the view (watch out: conflicts with Origami)
recenter:
	key("ctrl-k")
	key("ctrl-c")

bookmark set: key(ctrl-f2)
bookmark next: key(f2)

# Replaying ST macro
replay mac:
    key(ctrl-shift-q)

# For use with multi-cursors: select word. 
sword:
	key(ctrl-d)

# For use with multi-cursors: unselect word, select the next one. 
dross:
    key(ctrl-k)
    key(ctrl-d)

# Soft undo
soft undo:
    key(ctrl-u)

# Folding
fold: key("ctrl-shift-[")
fold all: 
    key("ctrl-k")
    key("ctrl-1")
unfold: key("ctrl-shift-]")
unfold all: 
    key("ctrl-k")
    key("ctrl-j")

# Indentation
action(edit.indent_less):
	key("ctrl-[")

action(edit.indent_more):
	key(ctrl-])

reindent: 
	key(ctrl-shift-x)
	key(ctrl-r)

no indent:
	key(ctrl-[:7)

# Miscellaneous EDITING

(uppercase | up case): 
	key(ctrl-k)
	key(ctrl-u)

(lower | lowercase | low case): 
	key(ctrl-k)
	key(ctrl-l)

(titlecase | titcase): 
        key(ctrl-k)
        key(ctrl-t)

reflow:
	key(ctrl-shift-x)
	key(ctrl-shift-alt-q)

toggle comment:
    key(ctrl-/)

# Swap line up or down
scoot up:
	key(ctrl-shift-up)

scoot down:
	key(ctrl-shift-down)

# Complete Julia code</description>
completion:
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

round to square:
    key(ctrl-x)
    key(delete)
    key(backspace)
    key("[")
    key(ctrl-v)
    key("]")

# Insert "- " in markdown to make a bullet
bullet:
	key(home)
	insert("- ")
	
# Quote the current selection with back ticks
bee tick that:
    key(ctrl-x)
    key(`)
    key(ctrl-v)
    key(`)

# Evaluate code
eval:
    key(ctrl-enter)

# Evaluate current file
run:
    key("ctrl-s")
    key("f5")


# Evaluate file using the build system
build:
    key(ctrl-b)

# Copy name of the file to the clipboard 
clip name:
	key("ctrl-shift-x")
	key("ctrl-alt-c")

# Store the path of the current file in the clipboard
clip path:
	key("ctrl-shift-x")
	key("ctrl-shift-alt-c")

# Change the working folder
to folder:
    key("ctrl-shift-x")
    key("ctrl-f")

submit line:
    mouse_click()
    mouse_click()
    mouse_click()
    key("ctrl-c")
    key("ctrl-v")
    key("enter")


# Julia package commands. These should be moved to Julia.talon 
# after it becomes possible to switch to a different context 
# in the terminal.
pack envy: 
    insert("using Pkg; ") 
    insert('Pkg.activate("."); ') 
    insert('Pkg.instantiate(); ') 

pack envy revise: 
    insert("using Revise; using Pkg; ") 
    insert('Pkg.activate("."); ') 
    insert('Pkg.instantiate();') 

pack test: 
    insert("using Pkg; ") 
    insert('Pkg.test(); ') 

pack update: 
    insert("using Pkg; ") 
    insert('Pkg.update(); ') 

pack status: 
    insert("using Pkg; ") 
    insert('Pkg.status(); ') 

pack build: 
    insert("using Pkg; ") 
    insert('Pkg.build(); ') 

pack precompile: 
    insert("using Pkg; ") 
    insert('Pkg.precompile(); ') 
