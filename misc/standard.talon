#
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

# Petr Krysl 2020: I want to avoid confusing scoot with scroll.
page up: key(pgup)
page down: key(pgdown)
# Petr Krysl 2020: I like the short versions of these commands.
copy: edit.copy()
cut: edit.cut()
paste: edit.paste()
undo: edit.undo()
oops: edit.undo()
redo: edit.redo()
(jay son | jason ): "json"

paste match: edit.paste_match_style()

# Petr Krysl 2020: I got used to this.
save [it]: edit.save()

# Petr Krysl 2020: I prefer to insert the enter where the cursor is.
slap:
	#edit.line_end()
	key(enter)