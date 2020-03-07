
" check for requirements{{{
" ----------------------
if !has("nvim") && !has("python3")
   echoerr "AirLatex requires python to work."
   finish
endif
"}}}

" helpers {{{
" -------
let s:airlatex_home = expand('<sfile>:p:h:h')
let s:is_windows = has('win32') || has('win64') || has('win16') || has('dos32') || has('dos16')
if s:is_windows
    let s:fsep = ';'
    let s:psep = '\'
else
    let s:fsep = ':'
    let s:psep = '/'
endif
let s:pyfile = s:airlatex_home. s:psep. 'python'. s:psep. 'sidebar.py'
"}}}

let g:AirLatexArrowClosed="▸"
let g:AirLatexArrowOpen="▾"
let g:AirLatexWinPos="left"
let g:AirLatexWinSize=41


if !exists("g:AirlatexDomain")
    let g:AirlatexDomain="www.overleaf.com"
endif

if !exists("g:AirLatexLogLevel")
    let g:AirLatexLogLevel="NOTSET"
endif
if !exists("g:AirLatexLogFile")
    let g:AirLatexLogFile="AirLatex.log"
endif

" vim: set sw=4 sts=4 et fdm=marker:
