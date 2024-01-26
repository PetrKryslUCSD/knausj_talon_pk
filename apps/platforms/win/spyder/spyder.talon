os: windows
and app.name: Python
os: windows
and app.exe: pythonw.exe
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.tabs

search: key(ctrl-f)
next match: key(alt-f3)

go line: key(ctrl-g)
go <number>:
    key(ctrl-g)
    insert("{number}")
    key(enter)

sark: key("alt-f11") 
ex mark: key(ctrl-shift-f11)

run selection: key(f-9)
spider: insert(Spyder)

tit case: key(alt-up)
low case: key(ctrl-alt-down)
up case: key(ctrl-alt-up)

[book] mark set: key("alt-f11") 
[book] mark previous: key("ctrl-shift-backspace")  
[book] mark next: key("ctrl-shift-delete")  
