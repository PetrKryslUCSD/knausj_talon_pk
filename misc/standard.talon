#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# scroll up: edit.page_up() # Petr Krysl 2020: I want to avoid confusing scoot with scroll.
# scroll down: edit.page_down() # Petr Krysl 2020: I want to avoid confusing scoot with scroll.
# Petr Krysl, 2022
copy: edit.copy() 
cut: edit.cut() 
paste: edit.paste() 
undo: edit.undo() 
oops: edit.undo() 
redo: edit.redo() 

paste match: edit.paste_match_style()
[file] save: edit.save() 
# wipe: key(backspace)    
(pad | padding): 
	insert("  ") 
	key(left)
# Petr Krysl 2020: I prefer to insert the enter where the cursor is.
slap:
    #edit.line_end()
    key(enter)

