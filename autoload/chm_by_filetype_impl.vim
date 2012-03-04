" exec vam#DefineAndBind('s:c','g:chm_by_filetype', '{}')
if !exists('g:chm_by_filetype') | let g:chm_by_filetype = {} | endif | let s:c = g:chm_by_filetype

fun! chm_by_filetype_impl#Lookup(key_word)
  let chm_file = get(s:c.ft, &ft, '')
  if chm_file == ''
    throw "no chm set for filetype ".&ft
  endif
  " :h shellescape there are special chars % and such
  let cmd =  shellescape("D:\NavigateCHM.exe").' '.shellescape(chm_file).' '.shellescape("/idh_scripting_comref.htm\#idh_sc_".a:key_word).' '.shellescape("XYplorer Help")
  exec '!'.cmd
endf
