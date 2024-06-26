from talon import Context, actions, ui, Module

mod = Module()
ctx = Context()

apps = mod.apps
apps.winedt = """
os: windows
and app.name: WinEdt 10.3
os: windows
and app.name: WinEdt.exe
"""

ctx.matches = r"""
app: winedt
"""


@ctx.action_class("win")
class win_actions:
    def filename():
        title = actions.win.title()
        result = title.split(" - ")[0]
        if "." in result:
            # print(result.split("\\")[-1])
            return result.split("\\")[-1]
        return ""

    def file_ext():
        return actions.win.filename().split(".")[-1]


@ctx.action_class("edit")
class edit_actions:
    def jump_line(n: int):
        actions.key("ctrl-g")
        actions.insert(str(n))
        actions.key("enter")

    def find(text: str):
        actions.key("ctrl-f")
        actions.insert(text)


@ctx.action_class("user")
class user_actions:
    def select_next_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("enter esc")
        actions.sleep("100ms")

    def select_previous_occurrence(text: str):
        actions.edit.find(text)
        actions.sleep("100ms")
        actions.key("shift-enter esc")
        actions.sleep("100ms")

    def tab_jump(number: int):
        if number < 10:
            actions.key("ctrl-keypad_{}".format(number))

    def tab_final():
        """Jumps to the final tab"""
        print("Notepad doesn't support this...")
        # actions.key("ctrl-numpad_0")

    # find_and_replace.py support begin

    def find(text: str):
        """Triggers find in current editor"""
        actions.key("ctrl-f")

        if text:
            actions.insert(text)

    def find_next():
        actions.key("f3")

    def find_previous():
        actions.key("shift-enter")

    def find_everywhere(text: str):
        """Triggers find across project"""

        actions.key("ctrl-shift-f")

        if text:
            actions.insert(text)

    def find_toggle_match_by_case():
        """Toggles find match by case sensitivity"""
        actions.key("alt-c")

    def find_toggle_match_by_word():
        """Toggles find match by whole words"""
        actions.key("alt-w")

    def find_toggle_match_by_regex():
        """Toggles find match by regex"""
        actions.key("alt-g")

    def replace(text: str):
        """Search and replaces in the active editor"""
        actions.key("esc ctrl-r")

        if text:
            actions.insert(text)

    def replace_everywhere(text: str):
        """Search and replaces in the entire project"""
        actions.key("esc ctrl-shift-f")

        if text:
            actions.insert(text)

    def replace_confirm():
        """Confirm replace at current position"""
        actions.key("alt-r")

    def replace_confirm_all():
        """Confirm replace all"""
        actions.key("alt-a")

    # find_and_replace.py support end

