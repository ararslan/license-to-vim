if exists('g:loaded_licensetovim') || &cp
    finish
endif
let g:loaded_licensetovim = 1

command -nargs=* License :call InsertLicense(<args>, 0)
command -nargs=* Stub :call InsertLicense(<args>, 1)

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/../resources'

function! InsertLicense(lic, stub)
    if a:stub == 1
        let type = 'stub'
        let prefix = 'head_'
    else
        let type = 'license'
        let prefix = ''
    endif
    let files = split(globpath(s:path, prefix . '*.txt'), '\n')
    let names = map(copy(files), 'fnamemodify(v:val, ":t")')
    let which = match(names, '\c^' . prefix . a:lic)
    if which > -1
        execute 'r' . files[which]
    else
        echoerr 'No matching ' . type . ' found for `' . a:lic . '`'
    endif
endfunction
