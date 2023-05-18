from typing import Set

from talon import Module, Context, actions, app
import sys

# Petr Krysl, 2022 changed word for n, and i, c (cap was interfering with cut),
# soot was being interpreted as cut, oats was getting confused with cut, whale
# was getting confused with pal, amp with amper 

# abcdefghijklmnopqrstuvwxyz
default_alphabet = "air blue caf doom eve fox gust harp ice jay keel look made nose oats pal quench red saw trap urge vest witch plex yank zoo".split(
    " "
)
letters_string = "abcdefghijklmnopqrstuvwxyz"

default_digits = "zero one two three four five six seven eight nine".split(" ")
numbers = [str(i) for i in range(10)]
default_f_digits = "one two three four five six seven eight nine ten eleven twelve".split(
    " "
)

mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol_key", desc="All symbols from the keyboard")
mod.list("arrow_key", desc="All arrow keys")
mod.list("number_key", desc="All number keys")
mod.list("modifier_key", desc="All modifier keys")
mod.list("function_key", desc="All function keys")
mod.list("special_key", desc="All special keys")
mod.list("punctuation", desc="words for inserting punctuation into text")


@mod.capture(rule="{self.modifier_key}+")
def modifiers(m) -> str:
    "One or more modifier keys"
    return "-".join(m.modifier_key_list)


@mod.capture(rule="{self.arrow_key}")
def arrow_key(m) -> str:
    "One directional arrow key"
    return m.arrow_key


@mod.capture(rule="<self.arrow_key>+")
def arrow_keys(m) -> str:
    "One or more arrow keys separated by a space"
    return str(m)


@mod.capture(rule="{self.number_key}")
def number_key(m) -> str:
    "One number key"
    return m.number_key


@mod.capture(rule="{self.letter}")
def letter(m) -> str:
    "One letter key"
    return m.letter


@mod.capture(rule="{self.special_key}")
def special_key(m) -> str:
    "One special key"
    return m.special_key


@mod.capture(rule="{self.symbol_key}")
def symbol_key(m) -> str:
    "One symbol key"
    return m.symbol_key


@mod.capture(rule="{self.function_key}")
def function_key(m) -> str:
    "One function key"
    return m.function_key


@mod.capture(rule="( <self.letter> | <self.number_key> | <self.symbol_key> )")
def any_alphanumeric_key(m) -> str:
    "any alphanumeric key"
    return str(m)


@mod.capture(
    rule="( <self.letter> | <self.number_key> | <self.symbol_key> "
    "| <self.arrow_key> | <self.function_key> | <self.special_key> )"
)
def unmodified_key(m) -> str:
    "A single key with no modifiers"
    return str(m)


@mod.capture(rule="{self.modifier_key}* <self.unmodified_key>")
def key(m) -> str:
    "A single key with optional modifiers"
    try:
        mods = m.modifier_key_list
    except AttributeError:
        mods = []
    return "-".join(mods + [m.unmodified_key])


@mod.capture(rule="<self.key>+")
def keys(m) -> str:
    "A sequence of one or more keys with optional modifiers"
    return " ".join(m.key_list)


@mod.capture(rule="{self.letter}+")
def letters(m) -> str:
    "Multiple letter keys"
    return "".join(m.letter_list)


ctx = Context()
modifier_keys = {
    # If you find 'alt' is often misrecognized, try using 'alter'.
    "alt": "alt",  #'alter': 'alt',
    "control": "ctrl",  #'troll':   'ctrl',
    "shift": "shift",  #'sky':     'shift',
    "super": "super",
}
if app.platform  == "mac":
    modifier_keys["command"] = "cmd"
    modifier_keys["option"] = "alt"
ctx.lists["self.modifier_key"] = modifier_keys
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet

# `punctuation_words` is for words you want available BOTH in dictation and as key names in command mode.
# `symbol_key_words` is for key names that should be available in command mode, but NOT during dictation.
punctuation_words = {
    # TODO: I'm not sure why we need these, I think it has something to do with
    # Dragon. Possibly it has been fixed by later improvements to talon? -rntz
    "`": "`",
    ",": ",",  # <== these things
    "be tick": "`", # Petr Krysl, 2022
    "grave": "`",
    "comma": ",",
    "period": ".",
    "full stop": ".",
    "semicolon": ";",
    "colon": ":",
    "forward slash": "/",
    "quest": "?", # Petr Krysl, 2022
    "exclamation mark": "!",
    "bang": "!", # Petr Krysl, 2022
    "*": "*", # Petr Krysl, 2022
    "hash": "#", # Petr Krysl, 2022
    "number sign": "#",
    "Percy": "%", # Petr Krysl, 2022
    "swirl": "@", # Petr Krysl, 2022
    "amper": "&", # Petr Krysl, 2022

    # Currencies
    "dolly": "$", # Petr Krysl, 2022
    "pound sign": "£",
}
symbol_key_words = {  # Petr Krysl, 2022 /\--9"!`;'=~'_$[](){}<>^@%#*|""
    "dot": ".",
    "point": ".",
    "slash": "/",
    "backslash": "\\",
    "minus": "-",
    "dash": "-",
    "hyphen": "-", 
    "equals": "=",
    "plus": "+",
    "bang": "!",
    "comma": ",",
    "bee tick": "`",
    "wink": ";",
    "trophy": "'",
    "equals": "=",
    "plus": "+",
    "quest": "?",
    "squiggle": "~",
    "dolly": "$",
    "score": "_",
    "colon": ":",
    "loan": ":",
    "open square": "[",
    "close square": "]",
    "open par": "(",
    "close par": ")",
    "open curly": "{",
    "close curly": "}",
    "open fork": "<",
    "close fork": ">",
    "hat": "^",
    "swirl": "@",
    "amper": "&",
    "pipe": "|",
    "quote": '"',
    "quote mark": '"',
    "star": "*",
    "hash": "#",
    "Percy": "%",

    # Currencies
    "dollar": "$",
    "pound": "£",
}

# make punctuation words also included in {user.symbol_keys}
symbol_key_words.update(punctuation_words)
ctx.lists["self.punctuation"] = punctuation_words
ctx.lists["self.symbol_key"] = symbol_key_words
ctx.lists["self.number_key"] = dict(zip(default_digits, numbers))
ctx.lists["self.arrow_key"] = {
    "down": "down",
    "left": "left",
    "right": "right",
    "up": "up",
}

# Petr Krysl 2022
simple_keys = [
    # "end",
    "enter",
    "escape",
    "home",
    "insert",
    "pagedown",
    "pageup",
    # "space",
    "tab",
]

# Petr Krysl 2022: I like these words for the delete and backspace keys
alternate_keys = {
    "strike": "delete",
    'smack': 'backspace',
    'space': 'space',  # Petr Krysl: space was getting confused with paste
    "page up": "pageup",
    "page down": "pagedown",
}
# mac apparently doesn't have the menu key.
if app.platform in ("windows", "linux"):
    alternate_keys["menu key"] = "menu"
    alternate_keys["print screen"] = "printscr"

special_keys = {k: k for k in simple_keys}
special_keys.update(alternate_keys)
ctx.lists["self.special_key"] = special_keys
ctx.lists["self.function_key"] = {
    f"F {default_f_digits[i]}": f"f{i + 1}" for i in range(12)
}


@mod.action_class
class Actions:
    def move_cursor(s: str):
        """Given a sequence of directions, eg. 'left left up', moves the cursor accordingly using edit.{left,right,up,down}."""
        for d in s.split():
            if d in ('left','right','up','down'):
                getattr(actions.edit, d)()
            else:
                raise RuntimeError(f'invalid arrow key: {d}')
