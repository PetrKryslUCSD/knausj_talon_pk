#custom vscode commands go here
app: vscode
-
settings():
    insert_wait = 10.0

tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.snippets
tag(): user.splits
tag(): user.tabs
window reload: user.vscode("workbench.action.reloadWindow")
window close: user.vscode("workbench.action.closeWindow")
#multiple_cursor.py support end

# Petr Krysl 2024
compal [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")
    
# Open folder  Petr Krysl 2024
open folder: 
    key(ctrl-k)
    key(ctrl-o)
# Start REPL
start repl: user.vscode("Julia: Start REPL")

# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
# Petr Krysl 2024
sidebar: user.vscode("workbench.action.toggleSidebarVisibility") 

    
# Panels. Use focus: Petr Krysl 2024
go problems: user.vscode("workbench.panel.markers.view.focus")
go terminal: user.vscode("workbench.action.terminal.focus")
go editor: user.vscode("workbench.action.focusActiveEditorGroup")

# Settings
show settings: user.vscode("workbench.action.openGlobalSettings")
show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
show snippets: user.vscode("workbench.action.openSnippets")

# Display
centered switch: user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch: user.vscode("workbench.action.toggleFullScreen")
theme switch: user.vscode("workbench.action.selectTheme")
wrap switch: user.vscode("editor.action.toggleWordWrap")
zen switch: user.vscode("workbench.action.toggleZenMode")

# File name commands Petr Krysl 2024
file copy name: key(ctrl-alt-e)
file copy path: key(shift-alt-c)
file copy relative [path]: 
    key(ctrl-k)
    key(ctrl-shift-c)

# Language Features
suggest show: user.vscode("editor.action.triggerSuggest")
hint show: user.vscode("editor.action.triggerParameterHints")
definition show: user.vscode("editor.action.revealDefinition")
definition peek: user.vscode("editor.action.peekDefinition")
definition side: user.vscode("editor.action.revealDefinitionAside")
references show: user.vscode("editor.action.goToReferences")
references find: user.vscode("references-view.find")
format that: user.vscode("editor.action.formatDocument")
format selection: user.vscode("editor.action.formatSelection")
imports fix: user.vscode("editor.action.organizeImports")
problem next: user.vscode("editor.action.marker.nextInFiles")
problem last: user.vscode("editor.action.marker.prevInFiles")
problem fix: user.vscode("problems.action.showQuickFixes")
rename that: user.vscode("editor.action.rename")
refactor that: user.vscode("editor.action.refactor")
whitespace trim: user.vscode("editor.action.trimTrailingWhitespace")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename: user.vscode("editor.action.rename")
refactor this: user.vscode("editor.action.refactor")

#code navigation Petr Krysl 2024
# go back and forth between editing locations
go back: user.vscode("workbench.action.navigateBack")
go fore: user.vscode("workbench.action.navigateForward")
# go to the definition
go def: key(f12)
go name: key(ctrl-t)
go references: user.vscode("references-view.find")
go recent [<user.text>]:
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(text or "")
    sleep(250ms)

    
# Bookmarks. Requires Bookmarks plugin
go marks: user.vscode("workbench.view.extension.bookmarks")
# Petr Krysl, 2022
mark [toggle]: user.vscode("bookmarks.toggle")
go next mark: user.vscode("bookmarks.jumpToNext")
go last mark: user.vscode("bookmarks.jumpToPrevious")

# Petr Krysl 2022
go line:
    key(ctrl-g)
go line <number>:
    key(ctrl-g)
    insert("{number}")
    key(enter)
go any: key(ctrl-p)
go symbol: 
    key(ctrl-p)
    key(@)
    

# Editing (Petr Krysl 2022)
# Using anchor (Petr Krysl 2022)
sark: 
    key(ctrl-k)
    key(ctrl-b)
ex mark:
    key(ctrl-k)
    key(ctrl-k)
# expand selection, Petr Krysl 2024
ex ex: 
    key(shift-alt-right)
# expanded selection to the interior between brackets, Petr Krysl 2024
# needs the extension Bracket Select
ex kets: 
    key(alt-a)

# Selecting word
sword: key(ctrl-d)
# Swap line up or down Petr Krysl 2024
scoot up:
    key(alt-up)
scoot down:
    key(alt-down)
# Indentation
no indent: key(shift-tab:6)
reformat: user.vscode("Format Selection")
recenter: 
    user.vscode("Recenter Top Bottom")

# Petr Krysl 2024
flip comment:
    key(ctrl-/)
tail comment:
    key(end)
    insert(" # ")
assign: insert(" = ")

# Add missing operators Petr Krysl 2024
op pair: insert(" => ")
op in: insert(" in ")

search:
    key(ctrl-f)
(netch | next match):
    key(f3)
search in files:
    key(ctrl-shift-f)
# Petr Krysl 2024
quick search:
    key(ctrl-shift-p)
    key(backspace)
    key(%)

# Command to convert content in round brackets (parentheses) to content in square brackets.
round to square:
    key(ctrl-x)
    key(delete)
    key(backspace)
    key("[")
    key(ctrl-v)
    key("]")
of type: insert("::")
of subtype: insert("<:")
tit case: user.vscode("Transform to Title Case")
low case: user.vscode("Transform to Lowercase")
up case: user.vscode("Transform to Uppercase")
    
# Rewrap text
reflow: key(alt-q)
# Insert "- " in markdown to make a bullet
bullet:
	key(home)
	insert("- ")
    key(end)
# Quote the current selection with back ticks
bee tick that:
    key(ctrl-x)
    key(`)
    key(ctrl-v)
    key(`)

# Accommodate the nonsense with special copy and paste commands in the terminal Petr Krysl 2024
(repl|terminal) copy: key(ctrl-shift-c)
(repl|terminal) paste: key(ctrl-shift-v)

# Petr Krysl 2024
to folder:
    key(shift-alt-c)
    user.vscode("Terminal: Focus Next Terminal in Terminal Group")
    sleep(1000ms)
    insert("cd(dirname(raw\"\"))")
    key(left:3)
    key(ctrl-shift-v)
    key(end)

# Petr Krysl 2024
# Julia package commands. These should be moved to Julia.talon 
# after it becomes possible to switch to a different context 
# in the terminal.
package envy: 
    insert('using Pkg; Pkg.activate("."); Pkg.instantiate(); ') 

package revise: 
    insert("using Revise; ") 

package test: 
    insert('using Pkg; Pkg.test(); ') 

package update: 
    insert('using Pkg; Pkg.update(); ') 

package status: 
    insert('using Pkg; Pkg.status(); ') 

package build: 
    insert('using Pkg; Pkg.build(); ') 

package precompile: 
    insert('using Pkg; Pkg.precompile(); ') 


# Folding
fold that: user.vscode("editor.fold")
unfold that: user.vscode("editor.unfold")
fold those: user.vscode("editor.foldAllMarkerRegions")
unfold those: user.vscode("editor.unfoldRecursively")
fold all: user.vscode("editor.foldAll")
unfold all: user.vscode("editor.unfoldAll")
fold comments: user.vscode("editor.foldAllBlockComments")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch: user.vscode("git.branchFrom")
git branch this: user.vscode("git.branch")
git checkout [<user.text>]:
    user.vscode("git.checkout")
    sleep(50ms)
    insert(text or "")
git commit [<user.text>]:
    user.vscode("git.commitStaged")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")
git commit undo: user.vscode("git.undoCommit")
git commit amend: user.vscode("git.commitStagedAmend")
git diff: user.vscode("git.openChange")
git ignore: user.vscode("git.ignore")
git merge: user.vscode("git.merge")
git output: user.vscode("git.showOutput")
git pull: user.vscode("git.pullRebase")
git push: user.vscode("git.push")
git push focus: user.vscode("git.pushForce")
git rebase abort: user.vscode("git.rebaseAbort")
git reveal: user.vscode("git.revealInExplorer")
git revert: user.vscode("git.revertChange")
git stash: user.vscode("git.stash")
git stash pop: user.vscode("git.stashPop")
git status: user.vscode("workbench.scm.focus")
# Petr Krysl 2022
git stage: user.vscode("Git: Stage Changes")
git stage all: user.vscode("git.stageAll")
git unstage: user.vscode("git.unstage")
git unstage all: user.vscode("git.unstageAll")
pull request: user.vscode("pr.create")
change next: key(alt-f5)
change last: key(shift-alt-f5)

# Running (Petr Krysl 2022)
eval: key(ctrl-enter)
eval move: key(shift-enter)
run: 
    key(ctrl-s)
    key(alt-j)
    key(alt-r)
run file: 
    key(ctrl-s)
    sleep(1000ms)
    key(ctrl-alt-e)
    #user.vscode("Terminal: Focus Terminal")
    key(ctrl-`)
    sleep(1000ms)
    insert("include(basename(raw\"")
    key(shift-ctrl-v)
    insert("\"))")
    key(end)
run path:
    key(ctrl-s)
    sleep(1000ms)
    key(shift-alt-c)
    #user.vscode("Terminal: Focus Terminal")
    key(ctrl-`)
    sleep(1000ms)
    insert("include(raw\"")
    key(shift-ctrl-v)
    insert("\")")
    key(end)
repeat command:
    key(ctrl-s)
    user.vscode("Terminal: Focus Terminal")
    sleep(1000ms)
    key(up)
    key(enter)

# LaTeX 
# Petr Krysl 2024
latex equation [ref]: 
    insert("~()")
    key(left)
    insert("\\ref{")

latex ref: 
    insert("~\\ref{")

latex citation: 
    insert("~\\cite{")
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

#Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
step over: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug stopper: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")
debug console: user.vscode("workbench.debug.action.toggleRepl")



#TODO: should this be added to linecommands?
# Petr Krysl 2024
clone line [down]: user.vscode("editor.action.copyLinesDownAction")
clone line up: user.vscode("editor.action.copyLinesUpAction")

#Expand/Shrink AST Selection
select less: user.vscode("editor.action.smartSelect.shrink")
select (more|this): user.vscode("editor.action.smartSelect.expand")

replace here:
    user.replace("")
    key(cmd-alt-l)
    
hover show: user.vscode("editor.action.showHover")

join lines: user.vscode("editor.action.joinLines")

select word: user.vscode("editor.action.addSelectionToNextFindMatch")
skip word: user.vscode("editor.action.moveSelectionToNextFindMatch")
