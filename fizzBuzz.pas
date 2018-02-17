(*
    Taken from https://github.com/joshhartigan/semicircle under the
    2-clause BSD licence, and modified slightly. Thanks!
*)

program fizzBuzz(output);
(* All variables that will be used are
   defined before the program begins.  *)
var
    i: integer;
begin
    (* for loop headers are surprisingly simple: *)
    for i := 1 to 100 do
        (* rather than '%' and '&&', 'mod' and 'and' are used. *)
        (* also, '=' is used for equality checks as ':=' is for
           declaration.                                         *)
        if i mod 15 = 0 then
            (* the lines of code in this program don't have semi-
               colons because the last statement of a scope does-
               n't need them in pascal.                           *)
            writeln('FizzBuzz')
        else if i mod 3 = 0 then
            writeln('Fizz')
        else if i mod 5 = 0 then
            writeln('Buzz')
        else
            writeln(i)
end.
