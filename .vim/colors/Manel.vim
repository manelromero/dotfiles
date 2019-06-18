" Manel theme
" Based on Tomorrow-Night theme

" Colors
let s:background = '262626'
let s:foreground = 'cccccc'
let s:selection = '666666'
let s:line = '3a3a3a'
let s:white = 'ffffff'
let s:comment = '999999'
let s:red = 'cc6666'
let s:orange = 'de935f'
let s:yellow = 'f0c674'
let s:green = 'b5bd68'
let s:blue = '81a2be'
let s:purple = 'b294bb'
let s:identifier = 'ae00ff'
let s:grey = '7a7a7a'

hi clear
syntax reset

let g:colors_name = 'Manel'

" Returns an approximate grey index for the given grey level
fun <SID>grey_number(x)
  if a:x < 14
    return 0
  else
    let l:n = (a:x - 8) / 10
    let l:m = (a:x - 8) % 10
    if l:m < 5
      return l:n
    else
      return l:n + 1
    endif
  endif
endfun

" Returns the actual grey level represented by the grey index
fun <SID>grey_level(n)
  if a:n == 0
    return 0
  else
    return 8 + (a:n * 10)
  endif
endfun

" Returns the palette index for the given grey index
fun <SID>grey_colour(n)
  if a:n == 0
    return 16
  elseif a:n == 25
    return 231
  else
    return 231 + a:n
  endif
endfun

" Returns an approximate colour index for the given colour level
fun <SID>rgb_number(x)
  if a:x < 75
    return 0
  else
    let l:n = (a:x - 55) / 40
    let l:m = (a:x - 55) % 40
    if l:m < 20
      return l:n
    else
      return l:n + 1
    endif
  endif
endfun

" Returns the actual colour level for the given colour index
fun <SID>rgb_level(n)
  if a:n == -1
    return 0
  else
    return 55 + (a:n * 40)
  endif
endfun

" Returns the palette index for the given R/G/B colour indices
fun <SID>rgb_colour(x, y, z)
  return 16 + (a:x * 36) + (a:y * 6) + a:z
endfun

" Returns the palette index to approximate the given R/G/B colour levels
fun <SID>colour(r, g, b)
	" Get the closest grey
	let l:gx = <SID>grey_number(a:r)
	let l:gy = <SID>grey_number(a:g)
	let l:gz = <SID>grey_number(a:b)

	" Get the closest colour
	let l:x = <SID>rgb_number(a:r)
	let l:y = <SID>rgb_number(a:g)
	let l:z = <SID>rgb_number(a:b)

	if l:gx == l:gy && l:gy == l:gz
		" There are two possibilities
		let l:dgr = <SID>grey_level(l:gx) - a:r
		let l:dgg = <SID>grey_level(l:gy) - a:g
		let l:dgb = <SID>grey_level(l:gz) - a:b
		let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
		let l:dr = <SID>rgb_level(l:gx) - a:r
		let l:dg = <SID>rgb_level(l:gy) - a:g
		let l:db = <SID>rgb_level(l:gz) - a:b
		let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
		if l:dgrey < l:drgb
			" Use the grey
			return <SID>grey_colour(l:gx)
		else
			" Use the colour
			return <SID>rgb_colour(l:x, l:y, l:z)
		endif
	else
		" Only one possibility
		return <SID>rgb_colour(l:x, l:y, l:z)
	endif
endfun

" Returns the palette index to approximate the 'rrggbb' hex string
fun <SID>rgb(rgb)
	let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
	let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
	let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

	return <SID>colour(l:r, l:g, l:b)
endfun

" Sets the highlighting for the given group
fun <SID>X(group, fg, bg, attr)
	if a:fg != ''
		exec 'hi ' . a:group . ' guifg=#' . a:fg . ' ctermfg=' . <SID>rgb(a:fg)
	endif
	if a:bg != ''
		exec 'hi ' . a:group . ' guibg=#' . a:bg . ' ctermbg=' . <SID>rgb(a:bg)
	endif
	if a:attr != ''
		exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
	endif
endfun

" Vim Highlighting
call <SID>X('CursorLine', '', s:line, 'none')
call <SID>X('Directory', s:blue, '', '')
call <SID>X('Error', s:white, s:blue, '')
call <SID>X('ErrorMsg', s:white, s:red, '')
call <SID>X('FoldColumn', '', s:background, '')
call <SID>X('Folded', s:comment, s:background, '')
call <SID>X('LineNr', s:selection, '', '')
call <SID>X('MatchParen', '', s:selection, '')
call <SID>X('ModeMsg', s:yellow, '', '')
call <SID>X('MoreMsg', s:yellow, '', '')
call <SID>X('NonText', s:selection, '', '')
call <SID>X('Normal', s:foreground, s:background, '')
call <SID>X('PMenu', s:foreground, s:background, '')
call <SID>X('PMenuSel', s:foreground, s:background, 'reverse')
call <SID>X('PmenuSbar', '', s:selection, '')
call <SID>X('Question', s:green, '', '')
call <SID>X('Search', s:background, s:blue, '')
call <SID>X('SignColumn', '', s:background, 'none')
call <SID>X('SpecialKey', s:selection, '', '')
call <SID>X('StatusLine', s:selection, s:foreground, '')
call <SID>X('StatusLineNC', s:selection, s:foreground, '')
call <SID>X('TabLine', s:selection, s:foreground, 'reverse')
call <SID>X('TabLineFill', s:selection, s:foreground, 'reverse')
call <SID>X('User1', s:blue, s:selection, '')
call <SID>X('User2', s:yellow, s:selection, '')
call <SID>X('VertSplit', s:background, s:selection, '')
call <SID>X('Visual', '', s:selection, '')
call <SID>X('Warning', s:white, s:purple, '')
call <SID>X('WarningMsg', s:red, '', '')
call <SID>X('vimCommand', s:red, '', '')
call <SID>X('vimContinue', s:grey, '', '')
call <SID>X('vimFuncKey', s:purple, '', '')

" Standard Highlighting
call <SID>X('shDerefSimple', s:red, '', '')
call <SID>X('shDoubleQuote', s:green, '', '')
call <SID>X('shQuote', s:green, '', '')
call <SID>X('shStatement', s:foreground, '', '')
call <SID>X('shVar', s:orange, '', '')
call <SID>X('shVariable', s:blue, '', '')

" Standard Highlighting
call <SID>X('Comment', s:comment, '', '')
call <SID>X('Conditional', s:foreground, '', '')
call <SID>X('Constant', s:orange, '', '')
call <SID>X('Define', s:purple, '', 'none')
call <SID>X('Function', s:blue, '', '')
call <SID>X('Identifier', s:blue, '', 'none')
call <SID>X('Include', s:blue, '', '')
call <SID>X('Keyword', s:orange, '', '')
call <SID>X('Operator', s:blue, '', 'none')
call <SID>X('PreProc', s:purple, '', '')
call <SID>X('Repeat', s:foreground, '', '')
call <SID>X('Special', s:foreground, '', '')
call <SID>X('Statement', s:foreground, '', '')
call <SID>X('String', s:green, '', '')
call <SID>X('Structure', s:purple, '', '')
call <SID>X('Title', s:comment, '', '')
call <SID>X('Todo', s:comment, s:background, '')
call <SID>X('Type', s:blue, '', 'none')

" Ruby Highlighting
call <SID>X('rubyAccess', s:red, '', '')
call <SID>X('rubyBlockParameter', s:orange, '', '')
call <SID>X('rubyBlockParameterList', s:orange, '', '')
call <SID>X('rubyClassName', s:yellow, '', '')
call <SID>X('rubyConditional', s:purple, '', '')
call <SID>X('rubyConstant', s:yellow, '', '')
call <SID>X('rubyControl', s:red, '', '')
call <SID>X('rubyDefine', s:purple, '', '')
call <SID>X('rubyFload', s:orange, '', '')
call <SID>X('rubyFunction', s:blue, '', '')
call <SID>X('rubyInclude', s:blue, '', '')
call <SID>X('rubyInstanceVariable', s:orange, '', '')
call <SID>X('rubyInteger', s:orange, '', '')
call <SID>X('rubyInterpolationDelimiter', s:orange, '', '')
call <SID>X('rubyMethod', s:blue, '', '')
call <SID>X('rubyMethodBlock', s:foreground, '', '')
call <SID>X('rubyMethodName', s:blue, '', '')
call <SID>X('rubyModuleName', s:orange, '', '')
call <SID>X('rubyRegexpSpecial', s:orange, '', '')
call <SID>X('rubyRspecKeyword', s:blue, '', '')
call <SID>X('rubyRspecKeyword', s:purple, '', '')
call <SID>X('rubyString', s:green, '', '')
call <SID>X('rubyStringDelimiter', s:green, '', '')
call <SID>X('rubySymbol', s:green, '', '')

" JavaScript Highlighting
call <SID>X('jsArrowFuncArgs', s:yellow, '', '')
call <SID>X('jsArrowFunction', s:blue, '', '')
call <SID>X('jsBooleanFalse', s:red, '', '')
call <SID>X('jsBooleanTrue', s:red, '', '')
call <SID>X('jsClassFuncName', s:orange, '', '')
call <SID>X('jsComment', s:comment, '', '')
call <SID>X('jsConditional', s:blue, '', '')
call <SID>X('jsExport', s:blue, '', '')
call <SID>X('jsExtendsKeyword', s:yellow, '', '')
call <SID>X('jsFuncArgExpression', s:purple, '', '')
call <SID>X('jsFuncArgs', s:yellow, '', '')
call <SID>X('jsFuncCall', s:blue, '', '')
call <SID>X('jsFunction', s:purple, '', '')
call <SID>X('jsImport', s:blue, '', '')
call <SID>X('jsNull', s:red, '', '')
call <SID>X('jsObjectKey', s:orange, '', '')
call <SID>X('jsObjectProp', s:foreground, '', '')
call <SID>X('jsObjectValue', s:yellow, '', '')
call <SID>X('jsReturn', s:red, '', '')
call <SID>X('jsStorageClass', s:blue, '', '')
call <SID>X('jsUndefined', s:red, '', '')
call <SID>X('jsVaribleDef', s:blue, '', '')

" HTML Highlighting
call <SID>X('htmlTag', s:foreground, '', '')
call <SID>X('htmlEndTag', s:foreground, '', '')
call <SID>X('htmlTagName', s:blue, '', '')
call <SID>X('htmlArg', s:orange, '', '')

" XML Highlighting
call <SID>X('xmlTag', s:blue, '', '')
call <SID>X('xmlTagName', s:blue, '', '')
call <SID>X('xmlAttrib', s:yellow, '', '')

" Git
call <SID>X('diffAdded', s:green, '', '')
call <SID>X('diffRemoved', s:red, '', '')
call <SID>X('gitcommitSummary', '', '', 'bold')

" Diff Highlighting
call <SID>X('diffAdd', '', '4c4e39', '')
call <SID>X('diffDelete', s:background, s:red, '')
call <SID>X('diffChange', '', '2B5B77', '')
call <SID>X('diffText', s:line, s:blue, '')

" Delete Functions
delf <SID>X
delf <SID>rgb
delf <SID>colour
delf <SID>rgb_colour
delf <SID>rgb_level
delf <SID>rgb_number
delf <SID>grey_colour
delf <SID>grey_level
delf <SID>grey_number

set background=dark
