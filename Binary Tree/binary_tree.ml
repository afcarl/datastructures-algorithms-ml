(* Binary Tree Structure *)

type 'a binary_tree =
  | Node of 'a binary_tree * 'a * 'a binary_tree
  | Leaf

(* Insert an item into the tree *)
let insert tree item =
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
