" load script
if exists('g:javascriptswitch_loaded')
    finish
endif

let g:javascriptswitch_loaded = 1

if exists('g:javascriptswitch_mappings')
    nnoremap <leader>sw ToggleSpec()<CR>
endif

command! ToggleSpec call ToggleSpec()

function! ToggleSpec()
    let g:javascriptswitch_unit_test = substitute(expand('%'), '.js', '.spec.js', '')
    let g:javascriptswitch_unit_test = substitute(g:javascriptswitch_unit_test, 'src', 'tests', '')
    echom 'Changing to spec file: ' . g:javascriptswitch_unit_test
    execute 'next ' . g:javascriptswitch_unit_test
endfunction
