# Petr Krysl 2022: I like these shorter versions
search:
    edit.find()

# Find Next (next match)
netch:
    edit.find_next()

# Petr Krysl 2020-2023: I like these shorter versions: skip, way, up, down, left, right
(go word left | skip left):
    edit.word_left()

(go word right | skip right):
    edit.word_right()

[go] way left:
    edit.line_start()
    edit.line_start()

[go] way right:
    edit.line_end()

[go] way down:
    edit.file_end()

[go] way up:
    edit.file_start()
    
go line start:
    edit.line_start()

go line end:
    edit.line_end()

go up:
    edit.up()

go down:
    edit.down()

go right:
        edit.right()

go left:
        edit.left()

go bottom:
    edit.file_end()
    
go top:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
select line:
    edit.select_line()

select all:
    edit.select_all()


# Petr Krysl 2020: I like these shorter versions
(select word left | ex left):
    edit.extend_word_left()

(select word right | ex right):
    edit.extend_word_right()

(select way left | ex way left):
    edit.extend_line_start()

(select way right | ex way right):
    edit.extend_line_end()

(select up | ex up):
    edit.extend_line_up()

(select down | ex down):
    edit.extend_line_down()

(select way up | ex way up):
    edit.extend_file_start()

(select way down | ex way down):
    edit.extend_file_end()

select word:
    edit.select_word()


# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

clear left:
    key(backspace)

clear right:
    key(delete)

clear up:
    edit.extend_line_up()
    edit.delete()

clear down:
    edit.extend_line_down()
    edit.delete()

clear word:
    edit.delete_word()

clear word left:
    edit.extend_word_left()
    edit.delete()

clear word right:
    edit.extend_word_right()
    edit.delete()

clear way left:
    edit.extend_line_start()
    edit.delete()

clear way right:
    edit.extend_line_end()
    edit.delete()

clear way up:
    edit.extend_file_start()
    edit.delete()

clear way down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

