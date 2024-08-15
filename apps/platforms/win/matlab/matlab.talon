os: windows
and app.name: MATLAB R2024a
os: windows
and app.exe: matlab.exe
-
tag(): user.find_and_replace
tag(): user.line_commands
# tag(): user.multiple_cursors
# tag(): user.snippets
# tag(): user.splits
tag(): user.tabs

# Navigation, searching

search:
	key(ctrl-f)

(netch | next match):
	key(f3)

search in files:
	key(ctrl-shift-f)

go line:
	key(ctrl-g)

go <number>:
	key(ctrl-g)
	insert("{number}")
	key(enter)

# Re-center the view 
recenter:
	key("ctrl-k")
	key("ctrl-c")

[book] mark set: key(ctrl-f2)
[book] mark next: key(shift-f2)

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

reformat: 
	key(ctrl-i)

no indent:
	key(ctrl-[:7)

end: 
    "end "
    key(backspace)

# Miscellaneous editing

(uppercase | up case): 
	key(ctrl-k)
	key(ctrl-u)

(lower | lowercase | low case): 
	key(ctrl-k)
	key(ctrl-l)

(titlecase | titcase): 
        key(ctrl-k)
        key(ctrl-t)

comment out:
    key(ctrl-r)

uncomment:
    key(ctrl-shift-r)

# Swap line up or down
scoot up:
	key(ctrl-shift-up)

scoot down:
	key(ctrl-shift-down)

# Expand the selection to the interior between brackets
ex kets:
	key(ctrl-shift-m)

# Expand the selection to line
ex line:
	key(ctrl-l)

# Expand the selection to scope	
ex cope:
	key(ctrl-shift-space)

args:
    insert("()")
    key(left)

assign:
	insert(" = ")

op times: insert(" * ")
op plus: insert(" + ")
op minus: insert(" - ")
op divide: insert(" / ")
op whack: insert(" \ ")
op power: insert("^")

funk squirt: 
	insert("sqrt()")
	key(left)

funk cosine: 
	insert("cos()")
	key(left)

funk sine: 
	insert("sin()")
	key(left)

# Evaluate code
eval:
    key("f9")

# Evaluate code
run:
    key("f5")

avw [prefix]:
    insert("avw_")

