" Premier League theme
" A dark, balanced color scheme for Vim.

" Terminal Colors
let s:foreground = '15'
let s:background = '17'
let s:selection = '61'
let s:line = '60'
let s:white = '15'
let s:comment = '146'
let s:red = '196'
let s:orange = '214'
let s:yellow = '220'
let s:green = '34'
let s:blue = '39'
let s:purple = '97'
let s:grey = '242'

hi clear
syntax reset

let g:colors_name = 'Premier_League'

set background=dark

fun SetHighlight(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ''
    exec 'hi ' . a:group . ' ctermfg=' . a:ctermfg
  endif
  if a:ctermbg != ''
    exec 'hi ' . a:group . ' ctermbg=' . a:ctermbg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfun

" Vim Highlighting
call SetHighlight('CursorColumn', '', s:line, 'none')
call SetHighlight('CursorColumn', '', s:line, 'none')
call SetHighlight('CursorLine', '', s:line, 'none')
call SetHighlight('CursorLineNr', s:yellow, '', 'none')
call SetHighlight('Directory', s:blue, '', '')
call SetHighlight('Error', s:white, s:blue, '')
call SetHighlight('ErrorMsg', s:white, s:red, '')
call SetHighlight('FoldColumn', '', s:background, '')
call SetHighlight('Folded', s:comment, s:background, '')
call SetHighlight('LineNr', s:selection, '', '')
call SetHighlight('MatchParen', '', s:selection, '')
call SetHighlight('ModeMsg', s:yellow, '', '')
call SetHighlight('MoreMsg', s:yellow, '', '')
call SetHighlight('NonText', s:selection, '', '')
call SetHighlight('Normal', s:foreground, s:background, '')
call SetHighlight('PMenu', s:foreground, s:grey, '')
call SetHighlight('PMenuSbar', '', s:selection, '')
call SetHighlight('PMenuSel', s:foreground, s:background, 'reverse')
call SetHighlight('Question', s:green, '', '')
call SetHighlight('Search', s:background, s:blue, '')
call SetHighlight('SignColumn', '', s:background, 'none')
call SetHighlight('SpecialKey', s:selection, '', '')
call SetHighlight('StatusLine', s:selection, s:foreground, 'reverse')
call SetHighlight('StatusLineNC', s:selection, s:grey, '')
call SetHighlight('TabLine', s:selection, s:foreground, 'reverse')
call SetHighlight('TabLineFill', s:selection, s:foreground, 'reverse')
call SetHighlight('User1', s:blue, s:selection, '')
call SetHighlight('User2', s:yellow, s:selection, '')
call SetHighlight('VertSplit', s:background, s:selection, '')
call SetHighlight('Visual', '', s:selection, '')
call SetHighlight('Warning', s:background, s:blue, '')
call SetHighlight('WarningMsg', s:orange, '', '')
call SetHighlight('netrwClassify', s:blue, '', '')
call SetHighlight('netrwDir', s:blue, '', '')
call SetHighlight('netrwExe', s:red, '', '')
call SetHighlight('netrwPlain', s:foreground, '', '')
call SetHighlight('vimCommand', s:orange, '', '')
call SetHighlight('vimContinue', s:grey, '', '')
call SetHighlight('vimFuncKey', s:purple, '', '')
call SetHighlight('vimNotFunc', s:red, '', '')
call SetHighlight('vimOption', s:blue, '', '')

" COC Highlighting
call SetHighlight('CocErrorFloat', s:white, s:purple, '')
call SetHighlight('CocErrorHighlight', s:white, s:selection, 'underline')
call SetHighlight('CocErrorSign', s:red, '', '')
call SetHighlight('CocErrorVirtualText', s:blue, '', '')
call SetHighlight('CocFloating', s:white, s:orange, '')
call SetHighlight('CocHintHighlight', s:white, s:blue, '')
call SetHighlight('CocHintFloat', s:white, s:purple, '')
call SetHighlight('CocHintSign', s:orange, s:white, '')
call SetHighlight('CocHintVirtualText', s:blue, s:white, '')
call SetHighlight('CocInfoFloat', s:white, s:purple, '')
call SetHighlight('CocInfoHighlight', s:white, s:blue, '')
call SetHighlight('CocInfoSign', s:blue, '', '')
call SetHighlight('CocInfoVirtualText', s:blue, '', '')
call SetHighlight('CocWarningFloat', s:white, s:purple, '')
call SetHighlight('CocWarningHighlight', s:white, s:blue, '')
call SetHighlight('CocWarningSign', s:yellow, '', '')
call SetHighlight('CocWarningVirtualText', s:blue, '', '')

" Bash Highlighting
call SetHighlight('shDerefSimple', s:red, '', '')
call SetHighlight('shDoubleQuote', s:green, '', '')
call SetHighlight('shQuote', s:green, '', '')
call SetHighlight('shStatement', s:foreground, '', '')
call SetHighlight('shVar', s:orange, '', '')
call SetHighlight('shVariable', s:blue, '', '')

" Standard Highlighting
call SetHighlight('Comment', s:comment, '', '')
call SetHighlight('Conditional', s:foreground, '', '')
call SetHighlight('Constant', s:orange, '', '')
call SetHighlight('Define', s:purple, '', 'none')
call SetHighlight('Function', s:blue, '', '')
call SetHighlight('Identifier', s:blue, '', 'none')
call SetHighlight('Include', s:blue, '', '')
call SetHighlight('Keyword', s:orange, '', '')
call SetHighlight('Operator', s:blue, '', 'none')
call SetHighlight('PreProc', s:purple, '', '')
call SetHighlight('Repeat', s:foreground, '', '')
call SetHighlight('Special', s:foreground, '', '')
call SetHighlight('Statement', s:foreground, '', '')
call SetHighlight('String', s:green, '', '')
call SetHighlight('Structure', s:purple, '', '')
call SetHighlight('Title', s:comment, '', '')
call SetHighlight('Todo', s:comment, s:background, '')
call SetHighlight('Type', s:blue, '', 'none')

" Ruby Highlighting
call SetHighlight('rubyAccess', s:red, '', '')
call SetHighlight('rubyAttribute', s:green, '', '')
call SetHighlight('rubyBlockParameter', s:orange, '', '')
call SetHighlight('rubyBlockParameterList', s:orange, '', '')
call SetHighlight('rubyBoolean', s:orange, '', '')
call SetHighlight('rubyClass', s:purple, '', '')
call SetHighlight('rubyClassBlock', s:foreground, '', '')
call SetHighlight('rubyClassName', s:yellow, '', '')
call SetHighlight('rubyConditional', s:purple, '', '')
call SetHighlight('rubyConstant', s:yellow, '', '')
call SetHighlight('rubyControl', s:red, '', '')
call SetHighlight('rubyDefine', s:purple, '', '')
call SetHighlight('rubyException', s:orange, '', '')
call SetHighlight('rubyFload', s:orange, '', '')
call SetHighlight('rubyFunction', s:blue, '', '')
call SetHighlight('rubyInclude', s:blue, '', '')
call SetHighlight('rubyInstanceVariable', s:orange, '', '')
call SetHighlight('rubyInteger', s:orange, '', '')
call SetHighlight('rubyInterpolationDelimiter', s:orange, '', '')
call SetHighlight('rubyMacro', s:purple, '', '')
call SetHighlight('rubyMethodBlock', s:foreground, '', '')
call SetHighlight('rubyMethodName', s:blue, '', '')
call SetHighlight('rubyModuleName', s:orange, '', '')
call SetHighlight('rubyPseudoVariable', s:green, '', '')
call SetHighlight('rubyRegexpSpecial', s:orange, '', '')
call SetHighlight('rubyRspecKeyword', s:blue, '', '')
call SetHighlight('rubyRspecKeyword', s:purple, '', '')
call SetHighlight('rubyString', s:green, '', '')
call SetHighlight('rubyStringDelimiter', s:green, '', '')
call SetHighlight('rubySymbol', s:orange, '', '')
call SetHighlight('yardGenericTag', s:yellow, '', '')

" JavaScript Highlighting
call SetHighlight('jsArrowFuncArgs', s:yellow, '', '')
call SetHighlight('jsArrowFunction', s:blue, '', '')
call SetHighlight('jsBooleanFalse', s:red, '', '')
call SetHighlight('jsBooleanTrue', s:red, '', '')
call SetHighlight('jsClassFuncName', s:orange, '', '')
call SetHighlight('jsComment', s:comment, '', '')
call SetHighlight('jsConditional', s:blue, '', '')
call SetHighlight('jsDestructuringBlock', s:yellow, '', '')
call SetHighlight('jsExport', s:blue, '', '')
call SetHighlight('jsExtendsKeyword', s:yellow, '', '')
call SetHighlight('jsFuncArgExpression', s:purple, '', '')
call SetHighlight('jsFuncArgs', s:yellow, '', '')
call SetHighlight('jsFuncCall', s:blue, '', '')
call SetHighlight('jsFuncName', s:blue, '', '')
call SetHighlight('jsFunction', s:orange, '', '')
call SetHighlight('jsImport', s:blue, '', '')
call SetHighlight('jsModuleKeyword', s:foreground, '', '')
call SetHighlight('jsNull', s:red, '', '')
call SetHighlight('jsObjectKey', s:orange, '', '')
call SetHighlight('jsObjectProp', s:foreground, '', '')
call SetHighlight('jsObjectShorthandProp', s:orange, '', '')
call SetHighlight('jsObjectStringKey', s:green, '', '')
call SetHighlight('jsObjectValue', s:yellow, '', '')
call SetHighlight('jsParens', s:foreground, '', '')
call SetHighlight('jsRegexpString', s:green, '', '')
call SetHighlight('jsReturn', s:red, '', '')
call SetHighlight('jsStorageClass', s:blue, '', '')
call SetHighlight('jsString', s:green, '', '')
call SetHighlight('jsUndefined', s:red, '', '')
call SetHighlight('jsVariableDef', s:foreground, '', '')

" TypeScript Highlighting
call SetHighlight('typescriptBoolean', s:orange, '', '')
call SetHighlight('typescriptBraces', s:blue, '', '')
call SetHighlight('typescriptFuncKeyword', s:orange, '', '')
call SetHighlight('typescriptGlobalObjects', s:blue, '', '')
call SetHighlight('typescriptLabel', s:blue, '', '')
call SetHighlight('typescriptNull', s:red, '', '')
call SetHighlight('typescriptNumber', s:orange, '', '')
call SetHighlight('typescriptOpSymbols', s:blue, '', '')
call SetHighlight('typescriptParens', s:blue, '', '')
call SetHighlight('typescriptReserved', s:blue, '', '')
call SetHighlight('typescriptStatement', s:red, '', '')
call SetHighlight('typescriptStorageClass', s:blue, '', '')
call SetHighlight('typescriptStringB', s:green, '', '')
call SetHighlight('typescriptStringS', s:green, '', '')
call SetHighlight('typescriptType', s:yellow, '', '')

" JSX Highlighting
call SetHighlight('jsxAttrib', s:orange, '', '')
call SetHighlight('jsxBraces', s:foreground, '', '')
call SetHighlight('jsxClosePunct', s:foreground, '', '')
call SetHighlight('jsxCloseString', s:foreground, '', '')
call SetHighlight('jsxComponentName', s:blue, '', '')
call SetHighlight('jsxElement', s:foreground, '', '')
call SetHighlight('jsxEqual', s:foreground, '', '')
call SetHighlight('jsxExpressionBlock', s:foreground, '', '')
call SetHighlight('jsxOpenPunct', s:foreground, '', '')

" HTML Highlighting
call SetHighlight('htmlArg', s:orange, '', '')
call SetHighlight('htmlEndTag', s:foreground, '', '')
call SetHighlight('htmlH1', s:white, '', 'bold')
call SetHighlight('htmlH2', s:white, '', '')
call SetHighlight('htmlH3', s:white, '', '')
call SetHighlight('htmlH4', s:white, '', '')
call SetHighlight('htmlTag', s:foreground, '', '')
call SetHighlight('htmlTagName', s:blue, '', '')

" Markdown Highlighting
call SetHighlight('mkdCode', s:blue, '', '')
call SetHighlight('mkdCodeDelimiter', s:yellow, '', '')
call SetHighlight('mkdHeading', s:white, '', '')
call SetHighlight('mkdListItemLine', s:purple, '', '')
call SetHighlight('mkdNonListItemBlock', s:foreground, '', '')

" XML Highlighting
call SetHighlight('xmlTag', s:blue, '', '')
call SetHighlight('xmlTagName', s:blue, '', '')
call SetHighlight('xmlAttrib', s:yellow, '', '')

" Git
call SetHighlight('diffAdded', s:green, '', '')
call SetHighlight('diffRemoved', s:red, '', '')
call SetHighlight('gitcommitSummary', '', '', 'bold')

" Diff Highlighting
call SetHighlight('diffAdd', '', '58', '')
call SetHighlight('diffDelete', s:background, s:red, '')
call SetHighlight('diffChange', '', '32', '')
call SetHighlight('diffText', s:line, s:blue, '')

delf SetHighlight
