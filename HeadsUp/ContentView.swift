//
//  ContentView.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 5/30/25.
//

import SwiftUI

struct ContentView: View {
    var data: [Deck] = getData()
    
    // Define the grid layout with two columns
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Decks")
                        .font(.title)
                        .bold()
                        .padding()
                        .padding(.leading)
                    Spacer()
                    SettingsButton()
                        .padding()
                        .padding(.trailing)
                }
                // ZStack, layer things on top of one another
                ZStack {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(data) { deck in
                                NavigationLink(destination: DeckDetailView(deck: deck)) {
                                    Text(deck.name)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.blue.opacity(0.2))
                                        .cornerRadius(10)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding()
                        }
                        .padding()
                    }
                    
                    // Floating Add Deck Button
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            AddDeckButton()
                                .padding()
                                .padding(.trailing)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

