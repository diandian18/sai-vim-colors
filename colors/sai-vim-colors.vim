" hemisu.vim - Vim color scheme
" ----------------------------------------------------------
" Author:	Zhang Sai
" Version:	1.0
" ----------------------------------------------------------

" Setup ----------------------------------------------------{{{
" Reset syntax highlighting
hi clear
if exists("syntax_on")
	syntax reset
endif

" Declare theme name
let g:colors_name="hemisu"

"}}}
" The Colors -----------------------------------------------{{{
" Define reusable colors
let s:black=           { "gui": "#000000", "cterm": "16"  }
let s:white=           { "gui": "#FFFFFF", "cterm": "231" }
let s:almostWhite=     { "gui": "#EEEEEE", "cterm": "255" }
let s:almostBlack=     { "gui": "#111111", "cterm": "233" }
let s:middleDarkGrey=  { "gui": "#777777", "cterm": "241" }
let s:middleLightGrey= { "gui": "#999999", "cterm": "246" }
let s:lightGrey=       { "gui": "#BBBBBB", "cterm": "249" }
let s:darkGrey=        { "gui": "#444444", "cterm": "238" }

let s:darkPink=        { "gui": "#63001C", "cterm": "88"  }
let s:middleDarkPink=  { "gui": "#FF0055", "cterm": "197" }
let s:middleLightPink= { "gui": "#D65E76", "cterm": "167" }
let s:lightPink=       { "gui": "#FFAFAF", "cterm": "217" }

let s:darkBlue=        { "gui": "#005F87", "cterm": "24"  }
let s:middleDarkBlue=  { "gui": "#538192", "cterm": "24"  }
let s:middleLightBlue= { "gui": "#9FD3E6", "cterm": "116" }
let s:lightBlue=       { "gui": "#CBE4EE", "cterm": "195" }

let s:darkGreen=       { "gui": "#5F5F00", "cterm": "58"  }
let s:middleDarkGreen= { "gui": "#739200", "cterm": "64"  }
let s:middleLightGreen={ "gui": "#B1D631", "cterm": "149" }
let s:lightGreen=      { "gui": "#BBFFAA", "cterm": "157" }

let s:darkTan=         { "gui": "#503D15", "cterm": "52"  }
let s:lightTan=        { "gui": "#ECE1C8", "cterm": "230" }

" for javascript edit by salle on 2017-07-23
let s:test=			   { "gui": "#FF0000", "cterm": "196" }
let s:textGreen=	   { "gui": "#d7ffd7", "cterm": "194" }
let s:llPink=		   { "gui": "#ffd7d7", "cterm": "224" }
let s:orange=		   { "gui": "#FFD75F", "cterm": "221" }
let s:darkOrange=	   { "gui": "#ff8700", "cterm": "208" }
let s:typeGreenYellow= { "gui": "#d7ff00", "cterm": "190" }
let s:fnBlue=          { "gui": "#9FD3E6", "cterm": "116" }
let s:fnDarkBlue=	   { "gui": "#00ffff", "cterm": "14" }
let s:objectBlue=	   { "gui": "#5fd7ff", "cterm": "81" }
let s:purple= { "gui": "#3c156a", "cterm": "103" }
let s:lightPurple= { "gui": "#3c156a", "cterm": "146" }

" Assign to semantic categories based on background color
if &background=="dark"
	" Dark theme
	let s:bg=s:black
"	let s:norm=s:almostWhite
	let s:norm=s:textGreen
	let s:comment=s:middleDarkGrey
	let s:dimmed=s:middleLightGrey
	let s:subtle=s:darkGrey
	let s:faint=s:almostBlack
	let s:accent1=s:middleLightBlue
	let s:accent2=s:middleLightGreen
	let s:accent3=s:lightGreen
	let s:accent4=s:lightTan
	let s:normRed=s:middleLightPink
	let s:normGreen=s:middleLightGreen
	let s:normBlue=s:middleLightBlue
	let s:faintRed=s:darkPink
	let s:faintGreen=s:darkGreen
	let s:faintBlue=s:darkBlue
	let s:keyword=s:lightPink
	let s:faintRed=s:lightPink
else
	" Light theme
	let s:bg=s:white
	let s:norm=s:almostBlack
	let s:comment=s:middleLightGrey
	let s:dimmed=s:middleDarkGrey
	let s:subtle=s:lightGrey
	let s:faint=s:almostWhite
	let s:accent1=s:middleDarkBlue
	let s:accent2=s:middleDarkGreen
	let s:accent3=s:middleDarkPink
	let s:accent4=s:darkTan
	let s:normRed=s:middleDarkPink
	let s:normGreen=s:middleDarkGreen
	let s:normBlue=s:middleDarkBlue
	let s:faintRed=s:lightPink
	let s:faintGreen=s:lightGreen
	let s:faintBlue=s:lightBlue
endif

"}}}
" Utilility Function ---------------------------------------{{{
function! s:h(group, style)
	execute "highlight" a:group
		\ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
		\ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
		\ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
		\ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
		\ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
		\ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
		\ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction


"}}}
" Highlights - Vim >= 7 ------------------------------------{{{
if version >= 700
	call s:h("CursorLine",  { "bg": s:faint }) 
	call s:h("MatchParen",  { "fg": s:accent1, "bg": s:faint, "gui": "bold" })
	call s:h("Pmenu",       { "bg": s:faint })
	call s:h("PmenuThumb",  { "bg": s:norm })
	call s:h("PmenuSBar",   { "bg": s:subtle })
	call s:h("PmenuSel",    { "bg": s:faintBlue })
	call s:h("ColorColumn", { "bg": s:faintRed })
	call s:h("SpellBad",    { "sp": s:normRed, "gui": "undercurl" })
	call s:h("SpellCap",    { "sp": s:accent1, "gui": "undercurl" })
	call s:h("SpellRare",   { "sp": s:normGreen, "gui": "undercurl" })
	call s:h("SpellLocal",  { "sp": s:accent4, "gui": "undercurl" })
	hi! link CursorColumn	CursorLine

	" Use background for cterm Spell*, which does not support undercurl
	execute "hi! SpellBad   ctermbg=" s:faintRed.cterm
	execute "hi! SpellCap   ctermbg=" s:faintBlue.cterm
	execute "hi! SpellRare  ctermbg=" s:faintGreen.cterm
	execute "hi! SpellLocal ctermbg=" s:faint.cterm
endif


" for test

"}}}
" Highlights - UI ------------------------------------------{{{
call s:h("Normal",       { "fg": s:norm, "bg": s:bg })
call s:h("NonText",      { "fg": s:subtle })
call s:h("Cursor",       { "fg": s:bg, "bg": s:accent3 })
call s:h("Visual",       { "bg": s:faintBlue })
call s:h("IncSearch",    { "bg": s:faintBlue })
call s:h("Search",       { "bg": s:faintGreen })
call s:h("StatusLine",   { "fg": s:norm, "bg": s:faint, "gui": "bold", "cterm": "bold" })
call s:h("StatusLineNC", { "fg": s:dimmed, "bg": s:faint })
call s:h("SignColumn",   { "fg": s:norm })
call s:h("VertSplit",    { "fg": s:subtle, "bg": s:faint })
call s:h("TabLine",      { "fg": s:dimmed, "bg": s:faint })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:comment, "bg": s:faint })
call s:h("Directory",    { "fg": s:accent1 })
call s:h("Title",        { "fg": s:accent4, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",     { "bg": s:faintRed })
call s:h("DiffAdd",      { "bg": s:faintGreen })
call s:h("DiffChange",   { "bg": s:faintRed })
call s:h("DiffDelete",   { "fg": s:normRed, "bg": s:faintRed })
call s:h("DiffText",     { "bg": s:faintRed, "gui": "bold", "cterm": "bold" })
call s:h("User1",        { "fg": s:bg, "bg": s:normGreen })
call s:h("User2",        { "fg": s:bg, "bg": s:normRed })
call s:h("User3",        { "fg": s:bg, "bg": s:normBlue })
hi! link WildMenu	IncSearch
hi! link FoldColumn	SignColumn
hi! link WarningMsg	ErrorMsg
hi! link MoreMsg	Title
hi! link Question	MoreMsg
hi! link ModeMsg	MoreMsg
hi! link TabLineFill	StatusLineNC
hi! link LineNr		NonText
hi! link SpecialKey	NonText

"}}}
" Highlights - Generic Syntax ------------------------------{{{
call s:h("Test",	   { "fg": s:test })
call s:h("Delimiter",  { "fg": s:dimmed })
call s:h("Comment",    { "fg": s:comment, "gui": "italic" })
call s:h("Underlined", { "fg": s:accent1, "gui": "underline", "cterm": "underline" })
call s:h("Type",       { "fg": s:faintRed })
call s:h("String",     { "fg": s:accent3 })
call s:h("Keyword",    { "fg": s:accent2, "gui": "bold", "cterm": "bold" })
call s:h("Todo",       { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "gui": "bold", "cterm": "bold" })
hi! link Identifier	Function 
hi! link Statement	Type
hi! link Constant	objectBlue
hi! link Number		Constant
hi! link Special	Constant
hi! link PreProc	Constant
hi! link Error		ErrorMsg

"}}}
" Highlights - HTML ----------------------------------------{{{
call s:h("htmlArg",             { "fg": s:orange })
call s:h("htmlTag",             { "fg": s:faintRed, "gui": "bold", "cterm": "bold" })
hi! link htmlLink	Underlined
hi! link htmlTag	htmlTag
hi! link htmlEndTag	htmlTag
hi! link htmlArg	htmlArg

" tsx
hi! link tsxTagName htmlTag
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxPunct htmlTag
hi! link tsxCloseString htmlTag
hi! link tsxAttrib htmlArg

"}}}
" Highlights - CSS -----------------------------------------{{{
hi! link cssBraces	Delimiter
hi! link cssSelectorOp	cssBraces
hi! link cssClassName	Normal

"}}}
" Highlights - Markdown ------------------------------------{{{
hi! link mkdListItem	mkdDelimiter

"}}}
" Highlights - Shell ---------------------------------------{{{
hi! link shOperator	Delimiter
hi! link shCaseBar	Delimiter

"}}}
" Highlights - JavaScript ----------------------------------{{{
call s:h("orange", { "fg": s:orange })
call s:h("darkOrange", { "fg": s:darkOrange })
call s:h("typeGreenYellow", { "fg": s:typeGreenYellow })
call s:h("fnBlue", { "fg": s:fnBlue, "cterm": "bold" })
call s:h("fnArgBlue", { "fg": s:fnBlue, "cterm": "underline"})
call s:h("fnDarkBlue", { "fg": s:fnDarkBlue, "cterm": "bold" })
call s:h("objectBlue", { "fg": s:objectBlue })
" call s:h("fnDoPink", { "fg": s:faintRed, "cterm": "bold" })
call s:h("almostWhite", { "fg": s:almostWhite })
call s:h("purple", { "fg": s:purple })
call s:h("lightPurple", { "fg": s:lightPurple })

hi! link javaScriptFuncKeyword orange

" Statement Keywords {{{
hi! link javaScriptSource        orange
hi! link javaScriptReserved        orange
hi! link javaScriptIdentifier    orange
hi! link javaScriptOperator       darkOrange
hi! link javaScriptBoolean       typeGreenYellow
hi! link javaScriptNull          typeGreenYellow

hi! link javaScriptFuncExp      fnBlue
hi! link javaScriptFuncDef      fnBlue
hi! link javaScriptFunctionKey      fnBlue
hi! link javaScriptFuncArg      fnArgBlue
hi! link javascriptFunctionDo      Test

hi! link javaScriptMessage       fnDarkBlue
hi! link javaScriptGlobal        textGreen
hi! link javaScriptReserved      orange

hi! link javaScriptValue	Constant
hi! link javaScriptNull	Constant
hi! link javaScriptBraces	Normal
hi! link javaScriptNumber typeGreenYellow 
hi! link javaScriptPrototype zsIdentifier

"}}}

" Highlights - Help ----------------------------------------{{{
hi! link helpExample	String
hi! link helpHeadline	Title
hi! link helpSectionDelim	Comment
hi! link helpHyperTextEntry	Statement
hi! link helpHyperTextJump	Underlined
hi! link helpURL	Underlined

"}}}

" vim: fdm=marker

hi! link typescriptReserved Comment
hi! link typescriptEndColons textGreen
hi! link typescriptSymbols lightPink
hi! link typescriptBraces textGreen
hi! link typescriptParens textGreen
hi! link typescriptComment Comment
hi! link typescriptLineComment Comment
hi! link typescriptDocComment Comment
hi! link typescriptCommentTodo Comment
hi! link typescriptMagicComment Comment
hi! link typescriptRef textGreen
hi! link typescriptDocNotation Comment
hi! link typescriptDocTags Comment
hi! link typescriptDocNGParam orange
hi! link typescriptDocParam orange
hi! link typescriptDocNumParam orange
hi! link typescriptDocEventRef orange
hi! link typescriptDocNamedParamType purple
hi! link typescriptDocParamName purple
hi! link typescriptDocParamType purple
hi! link typescriptString String
hi! link typescriptSpecial textGreen

hi! link typescriptGlobal fnDarkBlue
hi! link typescriptTestGlobal textGreen
hi! link typescriptPrototype purple
hi! link typescriptConditional orange
hi! link typescriptConditionalElse orange
hi! link typescriptCase orange
hi! link typescriptDefault orange
hi! link typescriptBranch orange
hi! link typescriptIdentifier orange
hi! link typescriptVariable orange
hi! link typescriptDestructureVariable textGreen
hi! link typescriptEnumKeyword orange
hi! link typescriptRepeat orange
hi! link typescriptForOperator orange
hi! link typescriptStatementKeyword orange
hi! link typescriptMessage textGreen
hi! link typescriptOperator orange
hi! link typescriptKeywordOp orange
hi! link typescriptCastKeyword orange
hi! link typescriptType purple
hi! link typescriptDestructureLabel textGreen
hi! link typescriptLabel almostWhite
hi! link typescriptTupleLable almostWhite

hi! link typescriptImport orange
hi! link typescriptImportType orange
hi! link typescriptExport orange
hi! link typescriptExportType orange
hi! link typescriptModule orange "
hi! link typescriptTry orange
hi! link typescriptExceptions orange

hi! link typescriptObjectLabel almostWhite
hi! link typescriptNull typeGreenYellow
hi! link typescriptNumber typeGreenYellow
hi! link typescriptBoolean typeGreenYellow

hi! link typescriptMember fnBlue
hi! link typescriptMethodAccessor orange
hi! link typescriptAsyncFuncKeyword orange
hi! link typescriptObjectAsyncKeyword orange
hi! link typescriptAsyncFor orange
hi! link typescriptFuncKeyword orange
hi! link typescriptAsyncFunc orange
hi! link typescriptArrowFunc orange

hi! link typescriptParamImpl textGreen

hi! link typescriptCall fnArgBlue
hi! link typescriptDecorator faintRed
hi! link typescriptAssertType faintRed
hi! link typescriptFuncName fnBlue
hi! link typescriptFuncArg fnArgBlue
hi! link typescriptArrowFuncArg fnArgBlue
hi! link typescriptFuncComma textGreen

hi! link typescriptClassKeyword orange
hi! link typescriptClassExtends orange

hi! link typescriptAmbientDeclaration orange
hi! link typescriptAbstract orange
hi! link typescriptClassStatic orange
hi! link typescriptReadonlyModifier orange
hi! link typescriptInterfaceKeyword orange
hi! link typescriptInterfaceExtends orange
hi! link typescriptReadonlyArrayKeyword orange
hi! link typescriptUnion orange
hi! link typescriptFuncTypeArrow orange
hi! link typescriptTypeQuery orange
hi! link typescriptAccessibilityModifier orange
hi! link typescriptOptionalMark orange
hi! link typescriptMappedIn orange
hi! link typescriptUserDefinedType orange

hi! link typescriptAliasKeyword orange
hi! link typescriptFuncType orange
hi! link typescriptConstructSignature orange
hi! link typescriptConstructorType orange
hi! link typescriptConstructor orange


hi! link typescriptInterfaceName purple
hi! link typescriptPredefinedType lightPurple
hi! link typescriptAliasDeclaration purple
hi! link typescriptTypeReference purple

"}}}

