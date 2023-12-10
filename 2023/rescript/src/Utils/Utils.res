/*
 * fs.readFileSync("./ecample.txt", "utf-8")
 */

// quickway
// @module external fs: 'a = "fs"
// fs["readFileSync"]("file", {"encoding": "utf8"})
@module("fs")
external readFileSync: (
  ~name: string,
  @string
  [
    | #utf8
    | @as("ascii") #useAscii
  ],
) => string = "readFileSync"
