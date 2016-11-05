type 'a binary_tree =
  | Node of 'a binary_tree * 'a * 'a binary_tree
  | Leaf

let empty = Leaf

let terminal v = Node(Leaf, v, Leaf)

let is_empty = function
  | Leaf -> true
  | Node _ -> false

(* Get the size of a binary tree *)
let rec size = function
  | Leaf -> 0
  | Node(l, v, r) -> size l + 1 + size r

(* Check if a binary tree contains a value *)
let rec contains tree value =
  match tree with
  | Leaf -> false
  | Node(l, v, r) -> v == value || contains l value || contains r value
