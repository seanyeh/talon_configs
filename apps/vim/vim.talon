tag: terminal
-
vim error:
  key(esc)
  insert(":cq")
  key(enter)
vim quit:
  key(esc)
  insert(":qa")
  key(enter)
vim save:
  key(esc)
  insert(":w")
  key(enter)
vim save quit:
  key(esc)
  insert("ZZ")
well quench:
  key(esc)
  insert("ZZ")

buffer close:
  key(esc)
  insert(":bd")
  key(enter)

undo:
  key(esc)
  "u"

redo:
  key(esc)
  key(ctrl-r)

change: "c"
insert: "i"
inner: "i"
ship insert: "I"
delete: "d"
until: "t"
paste: "p"
ship paste: "P"
replace: "r"

system yank: '\"+y'
system ship yank: '\"+Y'
system paste: '\"+p'
system ship paste: '\"+P'

duplicate: "Yp"

select all:
  key(esc)
  "ggVG"

# Project navigation
last file: key(ctrl-6)
project:
  key(ctrl-space)
  key(ctrl-space)
recent files:
  key(ctrl-space)
  # user.run_normal("<c-space>")
all files:
  key(ctrl-f)
  key(ctrl-f)
# temporary, will change to a plugin
alternate:
  user.run_normal(":call CustomAlternate()<cr>")

auto format: "=="
line: "gg"
definition: "g]"

# File navigation
buffer <number>:
  user.run_normal(":buffer {number}\n")
easy:
  "\w"
  # user.run_normal("\w")
cheesy:
  user.run_normal("\c")

# Editing
add to end: user.run_normal("Go")
add to top: user.run_normal("ggO")
delete last char: user.run_normal_smart("$x")


snip edit:
  key(esc)
  ":UltiSnipsEdit\n"

snip next: key(ctrl-j)

park alt:
  "\\ra"

macro: "@q"

copy filename:
    key(esc)
    ":let @+ = expand('%:p')\n"

copy directory:
    key(esc)
    ":let @+ = expand('%:h')\n"

# some code things, may move elsewhere
binding pry: "binding.pry"
sha bang bash: "#!/bin/bash"

