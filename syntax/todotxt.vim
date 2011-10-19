" Vim syntax file
" Language:    todo.txt
" Author:      Christoffer Lejdborg <christoffer.lejdborg@gmail.com>
" Filenames:   todo, TODO, todo.txt, TODO.txt

if exists("b:current_syntax")
  finish
endif

syn sync minlines=10
syn case ignore

syn match todoProject       "^#\s\+.\+$"
syn match todoLine          "^---\+"
syn match todoComment       "^\w.*$"

hi def link todoProject               String
hi def link todoLine                  String
hi def link todoComment               Function

let b:current_syntax = "todotxt"
