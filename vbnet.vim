" Vim syntax file
" Language:     Visual Basic
" Maintainer:	Joseph Guenther <joseph@codingcool.ca>

" quit when a syntax file was already loaded
if exists("b:current_syntax")
        finish
endif

" VB is case insensitive
syn case ignore

syn keyword vbKeyword If Then ElseIf Else Select Case
syn keyword vbKeyword AddressOf And ByRef ByVal In Is Like Mod Not Or To Xor
syn keyword vbKeyword True False Nothing
syn keyword vbKeyword Do For ForEach Loop Next Step To Until Wend While
syn keyword vbKeyword CBool CByte CCur CDate CDbl CInt CLng CSng CStr CVDate CVErr
syn keyword vbKeyword Alias As Base Begin Call Const Date Declare Dim Do
syn keyword vbKeyword Each ElseIf End Enum Error Event Exit Explicit For ForEach Function Get
syn keyword vbKeyword GoTo Implements Let Lib Lock Loop Next On OnError
syn keyword vbKeyword Option Private Property Public RaiseEvent Redim Resume Return
syn keyword vbKeyword Set Static Step Sub Until Wend While With
syn keyword vbKeyword Binary Date Error Friend Me New Optional ParamArray String WithEvents
syn keyword vbKeyword Class Module Imports Overridable Protected Overrides
syn keyword vbKeyword OrElse AndAlso Interface Namespace ReadOnly AddHandler
syn keyword vbKeyword RemoveHandler CType DirectCast CDec Handles Async Await MyBase IsNot Of Try Catch Finally Throw
syn keyword vbKeyword Shared Not Using Shadows MustInherit MustOverride Inherits
syn keyword vbKeyword Operator Iterator Narrowing Widening Partial NotInheritable NotOverridable GetType Region

syn keyword vbTodo contained    TODO

syn keyword vbTypes Boolean Byte Currency Date Decimal Double Empty
syn keyword vbTypes Integer Long Object Single String Variant

"Operators
syn match vbOperator "[()+.,\-/*=&]"
syn match vbOperator "[<>]=\="
syn match vbOperator "<>"
syn match vbOperator "\s\+_$"
"Numbers
"integer number, or floating point number without a dot.
syn match vbNumber "\<\d\+\>"
"floating point number, with dot
syn match vbNumber "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match vbNumber "\.\d\+\>"
syn match vbFloat              "[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match vbFloat              "[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match vbFloat              "[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character constants
syn region  vbString		start=+"+  end=+"\|$+
syn region  vbComment		start="\(^\|\s\)REM\s" end="$" contains=vbTodo
syn region  vbComment		start="\(^\|\s\)\'"   end="$" contains=vbTodo
syn match   vbTypeSpecifier  "\<\a\w*[@\$%&!#]"ms=s+1
syn match   vbTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
hi def link vbComment           Comment
hi def link vbIdentifier        Identifier
hi def link vbNumber            Number
hi def link vbFloat             Float
hi def link vbOperator          Operator
hi def link vbString            String
hi def link vbKeyword           Statement
hi def link vbTodo              Todo
hi def link vbTypes             Type
hi def link vbTypeSpecifier     Type

let b:current_syntax = "vbnet"
