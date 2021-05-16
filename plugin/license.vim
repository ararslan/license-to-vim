if exists('g:loaded_licensetovim') || &cp
    finish
endif
let g:loaded_licensetovim = 1

command! -nargs=1 -complete=customlist,LicenseComplete License :call InsertLicense(<q-args>, 0)
command! -nargs=1 -complete=customlist,LicenseComplete Stub :call InsertLicense(<q-args>, 1)

function! LicenseComplete(arglead, cmdline, cursorpos) abort
    let l:paths = split(glob(s:path.'/*.txt'))
    let l:files = []
    for l:path in l:paths
        if l:path =~ a:arglead
            let l:files += [split(split(l:path, '/')[-1], '\.txt')[0]]
        endif
    endfor
    return l:files
endfunction

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
        execute '0read ' . l:files[l:which]
        execute "'[,']" . 's/{YEAR}/\=strftime("%Y")/e'
        execute "'[,']s/{AUTHOR}/" . get(g:, 'license_author', executable('git') ? trim(system('git config --get user.name')) : expand('$USER')) . '/e'
        execute "'[,']s/{EMAIL}/" .  get(g:, 'license_email', executable('git') ? trim(system('git config --get user.email')) : expand('$HOST')) . '/e'
    else
        echoerr 'No matching ' . l:type . ' found for `' . a:lic . '`'
    endif
endfunction

if !exists('g:Lf_Extensions')
    let g:Lf_Extensions = {}
endif

let g:Lf_Extensions.license = {
            \ 'source': 'leaderf#license#source',
            \ 'accept': 'leaderf#license#accept',
            \ 'highlights_def': {
            \ 'Lf_hl_licenseHead': 'head',
            \ 'Lf_hl_licenseTitle': '_\?\zs[a-z0-9]\+',
            \ 'Lf_hl_licenseVersion': '-\zs.*',
            \ },
            \ 'highlights_cmd': [
            \ 'hi link Lf_hl_licenseHead Constant',
            \ 'hi link Lf_hl_licenseTitle Title',
            \ 'hi link Lf_hl_licenseVersion Number',
            \ ],
            \ }

