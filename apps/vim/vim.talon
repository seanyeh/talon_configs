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
(file | fa) (save | safe):
  key(esc)
  key(esc)
  insert(":w")
  key(enter)
# "look" should be temporary, only to appease buggy speech engine
(look | well) quench:
  key(esc)
  key(esc)
  insert(":wq")
  key(enter)

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

nerd toggle:
  key(ctrl-t)
nerd find:
  key(esc)
  ":NERDTreeFind\n"

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
  "\c"
  # user.run_normal("\c")

# temporary, move elsewhere
search deaf: "/def "

# Editing
add to end: user.run_normal("Go")
add to top: user.run_normal("ggO")
delete last char: user.run_normal_smart("$x")

# loosechange plugin
change arg: 'cia'
change key: 'cik'
change value: 'civ'

complete:
  key(down)
  key(enter)

complete <number>:
  key(down)
  repeat(number - 1)
  key(enter)

snip edit:
  key(esc)
  ":UltiSnipsEdit\n"

snip next: key(ctrl-j)

park alt:
  "\\ra"

run all: "\\sa"
run current: "\\sc"
spec deaf: "\\sd"
spec parent: "\\sp"

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

