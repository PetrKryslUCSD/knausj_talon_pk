app: firefox
-
tag(): browser
tag(): user.tabs
tab search:
    browser.focus_address()
    insert("% ")
tab search <user.text>$:
    browser.focus_address()
    insert("% {text}")
    key(down)
    
# Overleaf latex editor
go line <number>:
    key(ctrl-shift-l)
    insert("{number}")
    key(enter)
add comment:
    key(ctrl-shift-c)
show review panel:
    key(ctrl-j)
complete:
    key(ctrl-space)

low case: key(ctrl-shift-u)
up case: key(ctrl-u)
toggle comment: key(ctrl-/)

latex ref:    insert("~\\ref{")
latex citation:         insert("~\\cite{")
math roman:
    insert("\\mathrm{}")
    key(left:1)
math bold:
    insert("\\mathbf{}")
    key(left:1)
math underline:
    insert("\\underline{{}}")
    key(left:1)
bold math:
    insert("\\boldmath$$")
    key(left:1)
math box:
    insert("\\mbox{}")
    key(left:1)
math big par:
    insert("\\left(\\right)")
    key(left:7)
math prime:
    insert("\\prime")
math partial:
    insert("\\partial")
math sub:
    insert("_{}")
    key(left:1)
math super:
    insert("^{}")
    key(left:1)
math big square:
    insert("\\left[\\right]")
    key(left:7)
math array:
    insert("\\begin{{array}}{{}}\\end{{array}}")
    key(left:12)
latex begin:
    insert("\\begin{")
math fraction:
    insert("\\frac{{}}{{}}")
    key(left:3)

scoot up:
    key(alt-up)
scoot down:
    key(alt-down)

toggle fold: key(f2)
