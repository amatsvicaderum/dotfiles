function! PromptSave()
  if @% != ""
    write
    return 1
  endif
  let l:name = input('File Name: ')
  if (l:name == "")
    return 0
  else
    execute "write! ".l:name
    return 1
  endif
endfunction

function! ToggleLineNumber()
  if &rnu
    set nornu
  else
    set rnu
  endif
endfunction

function! ToggleCursorLine()
  if &cursorline
    set nocursorline
  else
    set cursorline
  endif
endfunction

function! ToggleWrap()
  if &wrap
    set nowrap
    echo ":set nowrap"
  else
    set wrap
    echo ":set wrap"
  endif
endfunction
