#import "template.typ": icon

#let block-inset = 1em
#let block-radius = 0.5em

// #set block(
//   inset: 1em, 
//   radius: .5em,
// )
// #show image: it => block(stroke: 5em, it)

#let warning(content) = {

  block(
  fill: rgb("#FDF1E5"),
  inset: block-inset, 
  radius: block-radius,
  width: 100%,
  {
    heading(level: 3, text(rgb("#EC7500"))[#icon("warning") Warning])
    content
  }
)}

#let note(content) = block(
  fill: rgb("#E6F0FC"),
  inset: block-inset, 
  radius: block-radius,
  width: 100%,
  {
    heading(level: 3, text(rgb("#086DDD"))[#icon("info") Note])
    content
  }
)

#let tip(content) = block(
  fill: rgb("#E5F8F8"),
  inset: block-inset, 
  radius: block-radius,
  width: 100%,
  {
    heading(level: 3, text(rgb("#00BFBC"))[#icon("flame") Tip])
    content
  }
)

#let success(content, title: [Success]) = block(
  fill: rgb("#E6F8ED"),
  inset: block-inset, 
  radius: block-radius,
  width: 100%,
  {
    heading(level: 3, text(rgb("#08B94E"), [#icon("check") #title]))
    content
  }
)