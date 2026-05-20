; extends

; Self closing tags — no meaningful inner range, outer only
(jsx_self_closing_element) @jsx_element.outer @jsx_element.inner

; Paired tags — outer is the whole element, inner is children between tags
(jsx_element) @jsx_element.outer

(jsx_element
  open_tag: (_)
  (_)+ @jsx_element.inner
  close_tag: (_))
