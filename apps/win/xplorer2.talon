os: windows
# There is a registry tweak called DPF_NOTITLE, you can look it up in a file 
# called REGISTRY.TXT in the xplorer2 installation folder, but to turn it on 
# requires registry editing after you quit xplorer2. For more information 
# see REGISTRY.TXT file
title: /xplorer.*/
#app: /.*/
#and title: /(Save|Open|Browse|Select)/
-
tag(): user.file_manager
action(user.file_manager_go_back):
    key("alt-left")
action(user.file_manager_go_forward):
    key("alt-right")
action(user.file_manager_open_parent):
    key("alt-up")
    
^go <user.letter>$: 
    user.file_manager_open_volume("{letter}:")
go app data: 
    user.file_manager_open_directory("%AppData%")
go program files: 
    user.file_manager_open_directory("%programfiles%")
go parent: key("backspace")
go dropbox: 
    user.file_manager_open_user_directory("Dropbox (Personal)")
go dropbox courses: 
    user.file_manager_open_user_directory("Dropbox (Personal)/Courses")
go work:
    user.file_manager_open_user_directory("Documents/work")
go back[ward]: user.file_manager_go_back()
go for[ward]: user.file_manager_go_forward()

make folder:
    key(f8)