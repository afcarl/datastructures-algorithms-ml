(* Non optimal recursive solution *)
let rec quicksort = function
  | [] -> []
  | x::xs -> let smaller, larger = List.partition (fun y -> y < x) xs
             in quicksort smaller @ (x :: quicksort larger)
