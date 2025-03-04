"My LaTex settings

" Only load this plugin it has not yet been loaded for this buffer
" Note that using b:did_ftplugin would disable vimtex
if exists("b:did_mytexplugin")
  finish
endif
let b:did_mytexplugin = 1

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

let g:tex_flavor = 'latex'  " recognize tex files as latex

" setting indentation
setlocal expandtab
setlocal autoindent
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" Turn off automatic indenting in enumerated environments
let g:tex_indent_items=0

" Compilation
noremap <leader>r <Cmd>update<CR><Cmd>VimtexCompileSS<CR>
nmap <leader>v <plug>(vimtex-view)

" Write the line "TEX" to the file "/tmp/inverse-search-target.txt".
" I use the file  "/tmp/inverse-search-target.txt" as part of making inverse 
" search work for both LaTeX and Lilypond LyTeX files.
call system(printf("echo %s > %s", "TEX", "/tmp/inverse-search-target.txt"))

" BEGIN FORWARD SHOW
" ---------------------------------------------

" ZATHURA
" ---------------------------------------------

"if !exists("g:vim_window_id")
  "let g:vim_window_id = system("xdotool getactivewindow")
"endif

"function! s:TexFocusVim() abort
  "" Give window manager time to recognize focus moved to Zathura;
  "" tweak the 200m (200 ms) as needed for your hardware and window manager.
  "sleep 200m  

  "" Refocus Vim and redraw the screen
  "silent execute "!xdotool windowfocus " . expand(g:vim_window_id)
  "redraw!
"endfunction

"augroup vimtex_event_focus
  "au!
  "au User VimtexEventView call s:TexFocusVim()
"augroup END

" OKULAR
" ---------------------------------------------
"if !exists("g:vim_window_id")
  "let g:vim_window_id = system("xdotool getactivewindow")
"endif

"function! s:RefocusVim() abort
  "" Espera breve para asegurar que Okular ha procesado la búsqueda
  "sleep 200m
  "" Devuelve el enfoque a la ventana de Vim
  "call system("xdotool windowfocus " . g:vim_window_id)
"endfunction

"augroup vimtex_okular_refocus
  "autocmd!
  "autocmd User VimtexEventView call s:RefocusVim()
"augroup END

