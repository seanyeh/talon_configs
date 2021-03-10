tag: terminal
-
ellis: "ls\n"
(cd | seedy | city): "cd "
see pea: "cp"
(make dir | mick dir): "mkdir -p "
parent: ".."
(rg | orgy | archie): "rg "
kill: key(ctrl-c)
shell exit: key(ctrl-d)
shell paste: key(ctrl-shift-v)
shell copy: key(ctrl-shift-c)
are sea: "rc"

home directory: "~/"
home hidden: "~/."

last arg: "!$\n"
last command: "!!\n"

vim config edit: "cd ~/vimrc && v\n"
talon config edit: "cd ~/.talon/user/talon_configs && v\n"

yay install: "yay -S "
yay update: "yay -Syu\n"

change maud executable: "chmod +x "

source aliases: "source ~/.aliases\n"
aliases edit: "nvim ~/.aliases\n"
n see aliases edit: "nvim ~/.aliases_nc\n"

copy current directory: "pwd | xclip -selection clipboard\n"

# Favorites
go to home: "cd ~/\n"
go to talon: "cd ~/.talon/user/talon_configs\n"
go to vim are see: "cd ~/vimrc\n"
go to dot vim: "cd ~/.vim\n"
go to snippets: "cd ~/.vim/UltiSnips\n"

# Move somewhere else?
go to stuff: "cd ~/stuff\n"
go to devel: "cd ~/stuff/devel\n"
go to dotfiles: "cd ~/stuff/devel/dotfiles\n"
go to projects: "cd ~/stuff/devel/projects\n"
go to PR: "propen\n"
go to jura: "jira\n"

confirm: "y\n"

# rails stuff, possibly move elsewhere?
rake DB status: "rake db:migrate:status\n"
rake DB migrate: "rake db:migrate\n"
rake test DB migrate: "RAILS_ENV=test rake db:migrate\n"
rake migrate all: "rake db:migrate && RAILS_ENV=test rake db:migrate\n"
rake DB rollback: "rake db:rollback STEP="
rake test DB rollback: "RAILS_ENV=test rake db:rollback STEP="

# Generic formatters
attribute <user.text>:
  insert(user.formatted_text(text, "SNAKE_CASE"))
  insert(": ")
same attribute <user.text>:
  insert(user.formatted_text(text, "SNAKE_CASE"))
  insert(": ")
  insert(user.formatted_text(text, "SNAKE_CASE"))
symbol <user.text>:
  insert(":")
  insert(user.formatted_text(text, "SNAKE_CASE"))
pretzel <user.text>:
  insert("&:")
  insert(user.formatted_text(text, "SNAKE_CASE"))

# Vocabulary
vocabulary add:
  user.system_command("bash -c 'source ~/.bashrc; _vocabulary_add settings/additional_words.csv'")
vocabulary add private:
  user.system_command("bash -c 'source ~/.bashrc; _vocabulary_add private/vocabulary.csv'")

command grep: "grep "
command ock: "awk "
command ps: "ps aux "
command pwd: "pwd"
command h top: "htop"
command f z f: "fzf"
command ranger: "ranger"
command yay: "yay"
command git: "git"
command change mod: "chmod"
command dub sea: "wc "
command print f: "printf "
command move: "mv "
command x args: "xargs"
command unique: "uniq"
command date: "date"
