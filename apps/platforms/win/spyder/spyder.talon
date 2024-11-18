os: windows
and app.name: Python
os: windows
and app.exe: pythonw.exe
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.tabs

search: key(ctrl-f)
replace: key(ctrl-r)
next match: key(alt-f3)

go line: key(ctrl-g)
go <number>:
    key(ctrl-g)
    insert("{number}")
    key(enter)

ex point:
    key("shift:down")
    mouse_click(0)
    key("shift:up")
sark: key("alt-f11") 
ex mark: key(ctrl-shift-f11)

run selection: key(f-9)
spider: insert(Spyder)
dock string: 
    key(":3) 
    key(enter)
    key(":3) 

state deaf: 
    insert("def ():")
    key(left:3)

state if:
    insert("if ():")
    key(left:2)

state import: "import "
state from import: "from import "

assign: " = "

indent more: key(tab)
indent less: key(shift-tab)

tit case: key(alt-up)
low case: key(ctrl-alt-down)
up case: key(ctrl-alt-up)
flip comment: key(ctrl-1)
clone line: 
    mouse_click()
    mouse_click()
    mouse_click()
    key(ctrl-c)
    key(ctrl-v)

    

[book] mark set: key("alt-f11") 
[book] mark previous: key("ctrl-shift-backspace")  
[book] mark next: key("ctrl-shift-delete")  
