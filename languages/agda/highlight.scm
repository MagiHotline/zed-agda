; languages/agda/highlights.scm

; Comments
(comment) @comment
(block_comment) @comment

; Keywords
[
  "module"
  "where"
  "let"
  "in"
  "with"
  "rewrite"
  "postulate"
  "primitive"
  "mutual"
  "abstract"
  "private"
  "instance"
  "macro"
  "syntax"
  "pattern"
  "open"
  "import"
  "using"
  "hiding"
  "renaming"
  "to"
] @keyword

[
  "data"
  "record"
] @keyword.type

[
  "constructor"
  "field"
] @keyword.modifier

; Types and Built-ins
(sort) @type.builtin      ; Usually captures 'Set', 'Prop', 'Setω'
(type) @type

; Punctuation & Operators
[
  "("
  ")"
  "{"
  "}"
  "{{"
  "}}"
  "."
  ";"
] @punctuation.delimiter

[
  ":"
  "="
  "|"
  "->"
  "→"
  "\\"
  "λ"
  "∀"
  "forall"
] @operator

; Literals
(integer) @number
(float) @number.float
(string) @string
(character) @string.special

; Functions and Variables
(function_declaration name: (identifier) @function)
(signature name: (identifier) @function)
(variable) @variable
