(* Binary Tree Structure *)

type 'a binary_tree =
  | Node of 'a binary_tree * 'a * 'a binary_tree
  | Leaf

let empty = Leaf

let is_empty = function
  | Leaf -> true
  | Node _ -> false

let rec insert tree item =
  match tree with
    | Leaf -> Node(Leaf, item, Leaf)
    | Node(l, v, r) ->
       if item < v then
         let left_branch = insert l item in
         Node(left_branch, v, r)
       else
         let right_branch = insert r item in
         Node(l, v, right_branch)

let rec contains tree item =
  match tree with
  | Leaf -> false
  | Node(l, v, r) ->
     if v == item then true
     else
       if item < v then
         contains l item
       else contains r item

let rec min_tree = function
  | Leaf -> None
  | Node(l, v, r) -> if (is_empty l) then v else min_tree l

(*
 * tree_map (fun x -> x + 1) (Node(Leaf, 10, Leaf))
 *)
let rec tree_map f = function
  | Leaf ->
      Leaf
  | Node(l, v, r) ->
      Node(tree_map f l, f v, tree_map f r)
