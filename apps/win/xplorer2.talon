os: windows
#app.exe: C:\Program Files\zabkat\xplorer2_ult\xplorer2_64.exe
app.exe: xplorer2_64.exe
app.name: xplorer2_64
app: /.*/
and title: /(Save|Open|Browse|Select)/
-
tag(): user.file_manager
action(user.file_manager_go_back):
    key("alt-left")
action(user.file_manager_go_forward):
    key("alt-right")
action(user.file_manager_open_parent):
    key("alt-up")
    
^go <user.letter>$: user.file_manager_open_volume("{letter}:")
go app data: user.file_manager_open_directory("%AppData%")
go program files: user.file_manager_open_directory("%programfiles%")
