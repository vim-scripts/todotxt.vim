" Vim plugin for todo.txt
" Author: Christoffer Lejdborg <christoffer.lejdborg@gmail.com>

function! s:TodoOpen()
  " Find the active todo file
  if filereadable($HOME."/todo")
    let todo_file = $HOME."/todo"
  elseif filereadable($HOME."/todo.txt")
    let todo_file = $HOME."/todo.txt"
  elseif filereadable($HOME."/TODO")
    let todo_file = $HOME."/TODO"
  elseif filereadable($HOME."/TODO.txt")
    let todo_file = $HOME."/TODO.txt"
  else
    let todo_file = $HOME."/todo.txt"
  endif

  " Open todo file in new tab
  exe "tabnew ".todo_file
endfunction

exe "command! -buffer -bar Todo :execute s:TodoOpen()"
