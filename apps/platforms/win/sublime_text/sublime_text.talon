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

# New window
new window:
    key(ctrl-shift-p)
    insert("Window: New Window")
    key(enter)
close window:
    key(ctrl-shift-p)
    insert("Window: Close Window")
    key(enter)

# Navigation, searching

(compal | command) [<user.text>]:
	key(ctrl-shift-p)
	insert(user.text or "")

search:
	key(ctrl-f)

(netch | next match):
	key(f3)

search in files:
	key(ctrl-shift-f)

go project:
    key(ctrl-shift-p)
    insert("Project: Quick Switch Project")
    key(enter)

go any:
	key(ctrl-p)

go line:
	key(ctrl-g)

# I was getting colon mixed up with "go one".
go line <number>:
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

go error:
    key("f4")

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
group <number>:
    key("ctrl-shift-{number}")

# Toggle sidebar
sidebar:
	key("ctrl-k")
	key("ctrl-b")

focus sidebar: key("ctrl-0")

# Switch to single column layout
single column: key("alt-shift-1")

# Switch to two-column or two-rows layout
two columns: key("alt-shift-2")
two rows: key("alt-shift-8")

# Focus column
focus [column] <number>:
    key("ctrl-{number}")

# Operating on Tabs
# close file tab
tab close: app.tab_close()
tab for:
    key(ctrl-shift-tab)
tab back:
    key(ctrl-tab)

# Jumping about
jump previous: key(alt--)
jump next: key("alt-shift--")

# Re-center the view (watch out: conflicts with Origami)
recenter:
	key("ctrl-k")
	key("ctrl-c")

[book] mark set: key(ctrl-f2)
[book] mark next: key(f2)

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
indent less:
    key("shift-tab")

indent more:
    key("tab")

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

# Expand the selection to line|
ex line:
	key(ctrl-l)

# Expand the selection to scope	
ex cope:
	key(ctrl-shift-space)

# The following two commands work together to set a mark, move the point 
# to somewhere else, and then extend the selection between the current 
# position of the point and the mark. 
# Petr Krysl 2023
(set mark | sark):
	key(ctrl-k)
	key(ctrl-space)

(select to mark | ex mark):
	key(ctrl-k)
	key(ctrl-a)

args:
    insert("()")
    key(left)

assign:
	insert(" = ")

end: 
    "end "
    key(backspace)

op pair: insert(" => ")

op in: insert(" in ")

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

# Evaluate current file (even when not in the current folder)
run path:
    key("ctrl-s")
    key("ctrl-shift-x")
    key("ctrl-shift-p")

# Recall commands in the REPL
up one: key(up:1)
up two: key(up:2)

# Evaluate file using the build system
Ju[lia] build:
    key("ctrl-shift-p")
    insert("Build With: Julia open REPL")
    key("enter")
    key("ctrl-shift-2")

# Access history  (using REPLHistory)
show history:
    insert("using REPLHistory; print(history())")
    key("enter")

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

# Julia package commands. These should be moved to Julia.talon 
# after it becomes possible to switch to a different context 
# in the terminal.
package envy:
    insert("using Pkg; ") 
    insert('Pkg.activate("."); ') 
    insert('Pkg.instantiate(); ') 

package revise:
    insert("using Revise; using Pkg; ")

package test:
    insert("using Pkg; ") 
    insert('Pkg.test(); ') 

package update:
    insert("using Pkg; ") 
    insert('Pkg.update(); ') 

package status:
    insert("using Pkg; ") 
    insert('Pkg.status(); ') 

package build:
    insert("using Pkg; ") 
    insert('Pkg.build(); ') 

package precompile:
    insert("using Pkg; ") 
    insert('Pkg.precompile(); ') 

package remove helpers:
    insert("using Pkg; ")
    insert('Pkg.rm("Revise"); ')
    insert('Pkg.rm("REPLHistory"); ')

package add helpers:
    insert("using Pkg; ")
    insert('Pkg.add("Revise"); ')
    insert('Pkg.add("REPLHistory"); ')

terminus:
    key(ctrl-shift-p)
    insert("Terminus: Open Default Shell in Tab")
    key(enter)
    

# Show documentation in da REPL
show docs:
    key("alt-f12")

web docs:
    key(ctrl-c)
    key("ctrl-shift-p")
    insert("Open URL (Use Input)")
    key(enter)
    insert("http://google.com/search?q=Julia ")
    key(ctrl-v)
    key(enter)

Julia docs:
    key(ctrl-c)
    key("ctrl-shift-p")
    insert("Open URL (Use Input)")
    key(enter)
    insert("https://docs.julialang.org/en/v1")
    key(enter)
