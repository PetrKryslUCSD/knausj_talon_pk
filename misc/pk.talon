# Petr Krysl 2020: Useful commands transitioned from Dragon
os: windows
os: linux
-

# some shortcuts
insert my name:  insert("Petr Krysl")
insert my last name:  insert("Krysl")
insert my first name:  insert("Petr")
insert gmail:  insert("krysl.petr@gmail.com")
insert private gmail:  insert("petr.krysl.san.diego@gmail.com")
insert earthlink email:  insert("pkrysl@earthlink.net")
insert ucsd email:  insert("pkrysl@ucsd.edu")

# switch application on the desktop
switch app: key(alt-tab)

# Global clipboard (Ditto program needs to be configured to use this shortcut)
paste clip: key(ctrl-alt-v)

# Use screen capture ScreenHunter
snap it: key(ctrl-shift-f9)

# Insert line above or below
line above: 
    key(home)
    key(enter)
    key(up)

line below:
    key(end)
    key(enter)

new paragraph:
    key(enter)    
    key(enter)    

commace: insert(", ")

# For debugging
print application name: print(app.name())
        