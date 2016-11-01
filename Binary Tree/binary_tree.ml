(* Binary Tree Structure *)

type 'a binary_tree =
  | Node of 'a binary_tree * 'a * 'a binary_tree
  | Leaf

let empty = Leaf

let is_empty = function
  | Leaf -> true
  | Node _ -> false
