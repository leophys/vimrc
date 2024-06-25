let g:lsp_settings_servers_dir = $VIMHOME . "/.lsp"
let g:lsp_diagnostics_float_cursor = 0
let g:lsp_diagnostic_echo_cursor = 1
let g:lsp_diagnostics_signs_error = {'text': '=>'}
let g:lsp_diagnostics_signs_warning = {'text': '~>'}
let g:lsp_diagnostics_signs_information = {'text': '->'}
let g:lsp_diagnostics_signs_hint = {'text': '!'}
let g:lsp_document_code_action_signs_hint = {'text': '!!'}
let g:lsp_diagnostics_virtual_text_enabled = 1
let g:lsp_inlay_hints_enabled = 0
let g:lsp_fold_enabled = 0

" Folding
function! LspFolding()
    let g:lsp_fold_enabled = 1
    autocmd!
    autocmd setlocal
      \ foldmethod=expr
      \ foldexpr=lsp#ui#vim#folding#foldexpr()
      \ foldtext=lsp#ui#vim#folding#foldtext()
endfunction

" keybindings
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> <leader>gs <plug>(lsp-document-symbol)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> <leader>gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> <leader>g <plug>(lsp-document-diagnostics)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
    nnoremap <buffer> <leader>gf :call LspFolding()<CR>

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" Debugging

if !empty($DEBUG)
    let g:lsp_log_verbose = 1
    let g:lsp_log_file = expand($VIMHOME . '/vim-lsp.log')
    let g:asyncomplete_log_file = expand($VIMHOME . '/asyncomplete.log')
endif
