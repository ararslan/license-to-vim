if exists('g:loaded_licensetovim') || &cp
    finish
endif
let g:loaded_licensetovim = 1

command -nargs=* License :call InsertLicense(<args>, 0)
command -nargs=* Stub :call InsertLicense(<args>, 1)

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/../resources'

function! InsertLicense(lic, stub)
    if a:stub == 1
        let l:type = 'stub'
        let l:prefix = 'head_'
    else
        let l:type = 'license'
        let l:prefix = ''
    endif
    let l:files = split(globpath(s:path, l:prefix . '*.txt'), '\n')
    let l:names = map(copy(l:files), 'fnamemodify(v:val, ":t")')
    let l:which = match(l:names, '\c^' . l:prefix . a:lic)
    if l:which > -1
        execute 'r' . l:files[l:which]
    else
        echoerr 'No matching ' . l:type . ' found for `' . a:lic . '`'
    endif
endfunction
