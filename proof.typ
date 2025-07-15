#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)

#set page(width: 16cm, height: auto, margin: 1.5cm)
#set heading(numbering: "1.1.")

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

= Links

#definition[
  Let $cal(K)$ be a simplicial complex and $sigma in cal(K)$ be a simplex.
  The *link* of $L k(sigma)$ consists of all simplices $tau in cal(K)$ such
  that $sigma inter tau = emptyset$ and $sigma union tau$ is a simplex in
  $cal(K)$.
]

#theorem[
  $L k(sigma)$ is a subcomplex of $cal(K)$.
]
#proof[
  We need to show that $L k(sigma)$ is downward closed, so let $tau in L k(sigma)$ and $tau' subset.eq tau$. Then $tau' inter sigma subset.eq tau inter sigma = emptyset$, so $tau' inter sigma = emptyset$. Similarly, $tau' union sigma subset.eq tau union sigma$, so by downward closure of $cal(K)$, $tau' union sigma$ is also a simplex in $cal(K)$. Thus, $tau' in L k(sigma)$, so $L k(sigma)$ is downward closed. This makes $L k(sigma)$ a subcomplex of $cal(K)$.
]
