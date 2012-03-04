" exec vam#DefineAndBind('s:c','g:chm_by_filetype', '{}')
if !exists('g:chm_by_filetype') | let g:chm_by_filetype = {} | endif | let s:c = g:chm_by_filetype

let s:c.navigate_exe = get(s:c, 'navigate_exe', 'TODO set this')
let s:c.ft = get(s:c, 'ft', {})


" overwrite by: in your .vimrc
" let g:chm_by_filetype = {}
" let g:chm_by_filetype.navigate_exe = "NavigateCHM.exe"
" let g:chm_by_filetype.ft = {}
" let g:chm_by_filetype.ft.php = 'your-path-to-chm'

let s:c.ft['php'] = get(s:c.ft, 'php', 'dummy-php.chm')
let s:c.ft['vim'] = get(s:c.ft, 'php', 'dummy-php.chm')

" chm key lookup:
noremap \ck :call chm_by_filetype_impl#Lookup(expand('<cword>'))<cr>
