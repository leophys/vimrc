imap <silent><script><expr> <c-a> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
let g:copilot_filetypes = {
\    '*': v:false,
\    'go': v:true,
\    'typescript': v:true,
\ }
