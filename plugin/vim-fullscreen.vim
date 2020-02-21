let s:is_fs_now = 0
function Fullscreen ()
  if s:is_fs_now == 1
    execute "normal! \<C-w>="
    let s:is_fs_now = 0
  else
    execute "vertical resize"
    execute "resize"
    let s:is_fs_now = 1
  endif
endfunction

command! Fullscreen call Fullscreen()
