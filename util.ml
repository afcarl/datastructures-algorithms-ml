module Util = struct
  let print_list xs =
    let parts = String.concat "; " (List.map string_of_int xs)
                in "[" ^ parts ^ "]"
end
