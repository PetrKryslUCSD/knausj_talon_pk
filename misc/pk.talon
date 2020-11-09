# Comments start with a # sign, and they must always be on their own line.
#
# This part, the context header, defines under which circumstances this file applies.
os: windows
os: linux
# Anything above this (single!) dash is part of the header.
-
# Petr Krysl 2020: Useful commands transitioned from Dragon

# some shortcuts
insert my name:  insert("Petr Krysl")
insert email:  insert("krysl.petr@gmail.com")
insert email earthlink:  insert("pkrysl@earthlink.com")
insert email ucsd:  insert("pkrysl@ucsd.edu")

# switch application on the desktop
switch app: key(alt-tab)

# Global clipboard
paste clip: key(ctrl-alt-v)

# Insert line above or below
line above: 
    key(home)
    key(enter)
    key(up)

line below:
    key(end)
    key(enter)

# For debugging
print application name: print(app.name())
