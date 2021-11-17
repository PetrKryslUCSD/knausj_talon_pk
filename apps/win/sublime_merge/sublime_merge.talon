os: windows
and app.name: Sublime Merge
os: windows
and app.exe: sublime_merge.exe
-


compal [<user.text>]:
    key(ctrl-shift-p)
    insert(user.text or "")

commit:
	key(ctrl-enter)

push:
	key(ctrl-alt-up)

pull:
    key(ctrl-alt-down)

refresh: key(ctrl-shift-h)
