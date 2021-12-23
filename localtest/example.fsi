module Test

(*val (/) : int -> (divisor:int { divisor <> 0 }) -> int*)

let mathadd (x:int) (y:int):int=
    x/y


let proof()
  : Lemma (mathadd 2 1 == 2)
  = normalize_term_spec(mathadd 1 1)
