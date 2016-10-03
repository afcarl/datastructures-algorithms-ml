(* Binary Tree Structure *)

type 'a binary_tree =
  | Node of 'a binary_tree * 'a * 'a binary_tree
  | Leaf
