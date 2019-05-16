" map { -> {\n} 
inoremap {<CR> {}<ESC>i<ENTER><ENTER><ESC>ka<TAB>

" hightlight operator of math	
hi cMathOperator ctermfg=202 cterm=bold
hi cPointerOperator ctermfg=202 cterm=bold
hi cLogicOperator ctermfg=202 cterm=bold
hi cBinaryOperator ctermfg=202 cterm=bold
syn match cMathOperator display "[-+\*\%/=]"
syn match cPointerOperator display "->\|\.\|\:\:"
syn match cLogicOperator display "[!<>]=\="
syn match cLogicOperator display "=="
syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
syn match cBinaryOperator display "\~"

" highlight function
syn match cfun "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfun ctermfg=blue

" highlight macrio
syn match cmacro "\<[A-Z_][A-Z_0-9]*\>\s*("me=e-1
hi cmacro ctermfg=160
syn match cmacro "\<[A-Z_][A-Z_0-9]*\>"
hi cmacro ctermfg=160

" highlight namespace
syn match cplusplusnamespace "\<[a-zA-Z_][a-zA-Z_0-9]*\::"me=e-2
hi cplusplusnamespace ctermfg=cyan

" highlight string
syn match cstring "\".*\""
hi cstring ctermfg=216

" highlight #error
syn match cerror "#error\s.*"
hi cerror ctermfg=124 cterm=bold
