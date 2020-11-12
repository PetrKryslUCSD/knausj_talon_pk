# Petr Krysl 2020: Useful commands transitioned from Dragon
os: windows
os: linux
-

# some shortcuts
insert my name:  insert("Petr Krysl")
insert email:  insert("krysl.petr@gmail.com")
insert email earthlink:  insert("pkrysl@earthlink.com")
insert email ucsd:  insert("pkrysl@ucsd.edu")

# switch application on the desktop
switch app: key(alt-tab)

# Global clipboard
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

commace: insert(", ")

# For debugging
print application name: print(app.name())
        