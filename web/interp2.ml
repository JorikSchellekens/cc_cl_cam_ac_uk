open Slang

type steps = Interp_2.interp_state list

let rec driver state =
  match state with
    | ([], _, _) -> [state]
    | _ -> state :: driver (Interp_2.step state)

let steps e =
  let c = Interp_2.compile e
  in driver (c, Interp_2.initial_env, Interp_2.initial_state)

let string_list_of_code code = List.map Interp_2.string_of_instruction code

let string_list_of_env env = List.map Interp_2.string_of_env_or_value env

let string_list_of_heap (heap, i) = List.map Interp_2.string_of_value (Array.to_list (Array.sub heap 0 i))

let string_lists_of_steps steps = List.map (fun (c, e, s) -> (string_list_of_code c, string_list_of_env e, string_list_of_heap s)) steps
