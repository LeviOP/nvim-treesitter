(comment) @comment @spell

(afx_comment) @comment @spell

; identifiers afx
(afx_opening_element
  (afx_identifier) @tag)

(afx_closing_element
  (afx_identifier) @tag)

(afx_element_self_closing
  (afx_identifier) @tag)

(afx_attribute
  (afx_property_identifier) @tag.attribute)

(afx_text) @spell

; identifiers eel
(eel_object_path
  (eel_path_identifier) @variable.builtin
  (#any-of? @variable.builtin "this" "props"))

(eel_object_path
  (eel_path_identifier) @variable)

(eel_object_pair
  key: (eel_property_name) @property)

(eel_method_name) @function

(eel_parameter) @variable

; identifiers fusion
; -----------
(path_part) @property

(meta_property) @attribute

(prototype_signature
  "prototype" @keyword)

(include_statement
  "include" @keyword.import
  (source_file) @string.special.url)

(namespace_declaration
  "namespace" @keyword.type
  (alias_namespace) @module)

(type
  name: (type_name) @type)

; tokens
; ------
(afx_opening_element
  [
    "<"
    ">"
  ] @punctuation.bracket)

(afx_closing_element
  [
    "<"
    ">"
    "/"
  ] @punctuation.bracket)

(afx_element_self_closing
  [
    "<"
    "/>"
  ] @punctuation.bracket)

[
  (package_name)
  (alias_namespace)
] @module

(namespace_declaration
  "=" @operator)

(assignment
  "=" @operator)

(copy
  "<" @operator)

(deletion) @operator

(eel_binary_expression
  operator: _ @operator)

(eel_not_expression
  [
    "!"
    "not"
  ] @operator)

(string) @string

(number) @number

(boolean) @boolean

(null) @constant.builtin

(value_expression
  start: _ @punctuation.special
  end: _ @punctuation.special)

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ":"
  "."
  "?"
] @punctuation.delimiter

(eel_ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)
