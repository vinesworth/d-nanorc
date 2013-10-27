// Character literals
'a'
'1'
'_'
' '
'\''
'\"'
'\?'
'\\'
'\0'
'\a'
'\b'
'\f'
'\n'
'\r'
'\t'
'\v'
'\xFF'
'\1'
'\12'
'\123'
'\uABCD'
'\Uabcdef01'
'\&nbsp;'

// Things should not be parsed as character literals
''
'''
'\'
'\8'
'\0234'

// WYSIWYG strings:
r"hello"
r"c:\root\foo.exe"

r"ab
\n"

// backtick WYSIWYG strings:
`hello`
`c:\root\foo.exe`

`ab
\n`

// Multiline difficult case
`string` string `string`
string `string` string

// Hex string:
x" AB CD "

// Not a hex string:
X"aa a"

// Delimited strings:
q"(foo(xxx))"   // "foo(xxx)"
q"[foo{]"       // "foo{"

writeln(q"EOS
This
is a multi-line
heredoc string
EOS");

q"/foo]/"       // "foo]"
q"/abc/def/"    // error

// Token strings:

q{foo}              // "foo"
q{/*}*/ }           // "/*}*/ "
q{ foo(q{hello}); } // " foo(q{hello}); "
q{ __TIME__ }       // " __TIME__ "
