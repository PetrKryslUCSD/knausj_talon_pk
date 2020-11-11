mode: dictation
-
#everything here should call auto_insert to preserve the state to correctly auto-capitalize/auto-space.
<user.text>: auto_insert(text)
# Petr Krysl 2020: I would like to make that the same commands that I use in the command mode
slap: auto_insert("new-line")
enter: auto_insert("new-line")
period: auto_insert(".")
space: auto_insert(" ")
(comma | kama): 
    auto_insert(",")
question mark: auto_insert("?")
(bang | exclamation [mark]): auto_insert("!")
dash: auto_insert("-")
colon: auto_insert(":")
# user.dictate no longer exists, so I'm not sure what this was supposed to do.
#space: user.dictate(" ")
(semi colon | semicolon): auto_insert(";")
cap <user.text>: 
    result = user.formatted_text(user.text, "CAPITALIZE_FIRST_WORD")
    auto_insert(result)
#navigation
go up <number_small> lines:
    edit.up()
    repeat(number_small - 1)
go down <number_small> lines:
    edit.down()
    repeat(number_small - 1)
go left <number_small> words: 
    edit.word_left()
    repeat(number_small - 1)
go right <number_small> words: 
    edit.word_right()
    repeat(number_small - 1)
go way left: edit.line_start()
go way right: edit.line_end()
#selection
select left <number_small> words:
    edit.extend_word_left()
    repeat(number_small - 1)
select right <number_small> words:
    edit.extend_word_right()
    repeat(number_small - 1)
select left <number_small> characters:
    edit.extend_left()
    repeat(number_small - 1)
select right <number_small> characters:
    edit.extend_right()
    repeat(number_small - 1)
clear left <number_small> words:
    edit.extend_word_left()
    repeat(number_small - 1)
    edit.delete()
clear right <number_small> words:
    edit.extend_word_right()
    repeat(number_small - 1)
    edit.delete()
clear left <number_small> characters:
    edit.extend_left()
    repeat(number_small - 1)
    edit.delete()
clear right <number_small> characters:
    edit.extend_right()
    repeat(number_small - 1)
    edit.delete()
#formatting 
formatted <user.format_text>:
    user.auto_format_pause()
    auto_insert(format_text)
    user.auto_format_resume()
^format selection <user.formatters>$:
    user.formatters_reformat_selection(formatters)
#corrections
# Petr Krysl 2020: I would like to make that the same commands that I use in the command mode
undo: edit.undo()
oops: edit.undo()
chook: key(delete)
kooch: key(backspace)
select that: user.select_last_utterance()
spell that <user.letters>: auto_insert(letters)
spell that <user.formatters> <user.letters>:
    result = user.formatted_text(letters, formatters)
    user.auto_format_pause()
    auto_insert(result)
    user.auto_format_resume()
#escape, type things that would otherwise be commands
^escape <user.text>$:
    auto_insert(user.text)
