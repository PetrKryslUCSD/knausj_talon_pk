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
(page | scroll) up: key(pgup)
(page | scroll) down: key(pgdown)
# Petr Krysl 2020: I like the short versions of these commands.
copy: edit.copy()
cut: edit.cut()
paste: edit.paste()
undo: edit.undo()
oops: edit.undo()
redo: edit.redo()

paste match: edit.paste_match_style()

# Petr Krysl 2020: I got used to this.
save it: edit.save()

wipe: key(backspace)    
(pad | padding): 
	insert("  ") 
	key(left)
slap:
	edit.line_end()
	key(enter)