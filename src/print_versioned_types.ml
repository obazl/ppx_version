(* print_versioned_types.ml *)

let () =
  Ppx_version.Versioned_type.set_printing () ;
  let register_event_args =
    let open Ppxlib.Deriving.Args in
    empty +> arg "msg" __
  in
  Ppx_version.Dummy_derivers.add_type_ext_no_op1 "register_event" register_event_args;
  Ppxlib.Driver.standalone ()
