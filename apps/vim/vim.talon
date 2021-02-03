tag: terminal
-
vim: "vim"
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

last file: key(ctrl-6)
project:
  key(ctrl-b)
  key(ctrl-b)
recent files:
  key(ctrl-b)
all files:
  key(ctrl-f)
  key(ctrl-f)
auto format: "=="
add to end: "Go"
add to top: "ggO"
(dell | delete) line: "dd"
line: "gg"


delete last char:
  key(esc)
  "$x"

buffer <number>:
  key(esc)
  ":buffer {number}\n"

easy: "\w"
