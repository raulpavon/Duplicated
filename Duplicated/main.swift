//
//  main.swift
//  Duplicated
//
//  Created by Raul Leonardo Pavon Toral on 06/01/22.
//

import Foundation

var a = "abcde" //-> 0 # no characters repeats more than once
var b = "aabbcde" //-> 2 # 'a' and 'b'
var c = "aabBcde" //-> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
var d = "indivisibility" //-> 1 # 'i' occurs six times
var e = "Indivisibilities" //-> 2 # 'i' occurs seven times and 's' occurs twice
var f = "aA11" //-> 2 # 'a' and '1'
var g = "ABBA" //-> 2 # 'A' and 'B' each occur twice

func countDuplicates(_ s:String) -> Int {
    let stringArray = Array(s.lowercased()).map { ($0, 1) }
    let dictString = Dictionary(stringArray, uniquingKeysWith: +)
    return dictString.filter {$0.value > 1}.count
}

let duplicated = countDuplicates(e)

print(duplicated)
