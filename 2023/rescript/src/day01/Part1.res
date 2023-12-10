open Utils

Js.log("AOC: day01")

let fileInput = "src/day01/input1.text"
let exampleInput = "src/day01/example1.text"

let data = readFileSync(~name=fileInput, #utf8)->Js.String2.split("\n")

let values = data->Js.Array2.map(line => {
  let first =
    line->Js.String2.split("")->Js.Array2.find(v => !(v->Js.Float.fromString->Js.Float.isNaN))
  let last =
    line
    ->Js.String2.split("")
    ->Belt.Array.reverse
    ->Js.Array2.find(v => !(v->Js.Float.fromString->Js.Float.isNaN))
  (first->Js.String2.make ++ last->Js.String2.make)->Js.Float.fromString
})
let sum =
  values
  ->Belt.Array.map(i => {
    if !(i->Js.Float.isNaN) {
      i
    } else {
      0.0
    }
  })
  ->Belt.Array.reduce(0.0, (a, c) => a +. c)
Js.log(sum)
