module type OrderedType =
  sig
    type t
    val compare: t -> t -> int
  end
  
module Make(Ord: OrderedType) = struct

  type key = Ord.t  
  
  type 'a t =
    Empty
  | Node of {l:'a t; v: key; r:'a t;}
end

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
