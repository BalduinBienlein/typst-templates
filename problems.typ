#import "main.typ": doc_template

#let heading(titel)[
    #align(center)[#text(1.4em)[*#titel*]]
]

#let template(
  titel: " ",
  enable-header: true,
  body
) = {
  doc_template(
    titel,
    enable-header,
    body
  )

  #heading(#titel)
}
