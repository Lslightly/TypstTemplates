#import "@preview/ctheorems:1.1.2": *
#show: thmrules

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

// = Prime numbers

// #definition[
//   A natural number is called a #highlight[_prime number_] if it is greater
//   than 1 and cannot be written as the product of two smaller natural numbers.
// ]
// #example[
//   The numbers $2$, $3$, and $17$ are prime.
//   @cor_largest_prime shows that this list is not exhaustive!
// ]

// #theorem("Euclid")[
//   There are infinitely many primes.
// ]
// #proof[
//   Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration
//   of all primes. Set $P = p_1 p_2 dots p_n$. Since $P + 1$ is not in our list,
//   it cannot be prime. Thus, some prime factor $p_j$ divides $P + 1$.  Since
//   $p_j$ also divides $P$, it must divide the difference $(P + 1) - P = 1$, a
//   contradiction.
// ]

// #lemma[
//   a
// ]

// #corollary[
//   There is no largest prime number.
// ] <cor_largest_prime>
// #corollary[
//   There are infinitely many composite numbers.
// ]