from typing import Set

from talon import Module, Context, actions
import sys

default_alphabet = "air bat cap drum each fine gust harp sit jury crunch look made near oak pit quench red sun trap urge vest whale plex yank zip".split(
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
ctx.lists["self.modifier_key"] = {
    "alt": "alt",
    "command": "cmd",
    "control": "ctrl",  #'troll':   'ctrl',
    "roll": "ctrl",  #'troll':   'ctrl',
    "option": "alt",
    "shift": "shift",  #'sky':     'shift',
    "super": "super",
}
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet
# Petr Krysl 2020: I like these words for special characters
ctx.lists["self.symbol_key"] = {
    "bee tick": "`",
    "`": "`",
    "comma": ",",
    ",": ",",
    "dot": ".",
    "wink": ";",
    "trophy": "'",
    "slash": "/",
    "backslash": "\\",
    "minus": "-",
    "dash": "-",
    "eek": "=",
    "plus": "+",
    "quest": "?",
    "squiggle": "~",
    "bang": "!",
    "dolly": "$",
    "score": "_",
    "colon": ":",
    "loan": ":",
    "open bra": "[",
    "close bra": "]",
    "open par": "(",
    "close par": ")",
    "open curly": "{",
    "close curly": "}",
    "open fork": "<",
    "close fork": ">",
    "star": "*",
    "numb": "#",
    "Percy": "%",
    "hat": "^",
    "swirl": "@",
    "amper": "&",
    "pipe": "|",
    "quote": '"',
}


ctx.lists["self.number_key"] = dict(zip(default_digits, numbers))
ctx.lists["self.arrow_key"] = {
    "down": "down",
    "left": "left",
    "right": "right",
    "up": "up",
}

simple_keys = [
    "end",
    "enter",
    "escape",
    "home",
    "insert",
    "pagedown",
    "pageup",
    "space",
    "tab",
]

# Petr Krysl 2020: I like these words for the delete and backspace keys
# 
alternate_keys = {
    "del": "delete",
    'backs': 'backspace',
}
keys = {k: k for k in simple_keys}
keys.update(alternate_keys)
ctx.lists["self.special_key"] = keys
ctx.lists["self.function_key"] = {
    f"F {default_f_digits[i]}": f"f{i + 1}" for i in range(12)
}


@mod.action_class
class Actions:
    def get_alphabet() -> dict:
        """Provides the alphabet dictionary"""
        return alphabet

