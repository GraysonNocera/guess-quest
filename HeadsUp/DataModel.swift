//
//  DataModel.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 5/30/25.
//

import SwiftUICore


func getData() -> [Deck] {
    // temporary method of getting random data
    let numDecks = Int.random(in: 10...20)
    var data: [Deck] = []
    for i in 0..<numDecks {
        let s = "Deck \(i)"
        data.append(Deck(name: s, description: "a description"))
    }
    return data
}

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
