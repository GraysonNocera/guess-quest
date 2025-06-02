//
//  DataModel.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 5/30/25.
//

import SwiftUICore

struct Deck: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let imageName: String?
    let favorite: Bool?
}

struct Card: Identifiable, Codable {
    let id: String
    let item: String
    let deckId: String
}

func getData() -> [Deck] {
    // temporary method of getting random data
    let numDecks = Int.random(in: 20...30)
    var data: [Deck] = []
    for i in 0..<numDecks {
        let s = "Deck \(i)"
        data.append(Deck(id: s, name: s, description: "a description", imageName: nil, favorite: nil))
    }
    return data
}

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
