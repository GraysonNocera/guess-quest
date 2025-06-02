//
//  ContentView.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 5/30/25.
//

import SwiftUI

struct Deck: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String? = nil
}

struct DeckDetailView: View {
    let deck: Deck
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                if let imageName = deck.imageName {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(10)
                }
                
                Text(deck.name)
                    .font(.title)
                    .bold()
                
                Text(deck.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Button(action: {
                    // Handle play action
                    print("Playing deck: \(deck.name)")
                }) {
                    Text("Play Deck")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView: View {
    var data: [Deck] = getData()
    
    // Define the grid layout with two columns
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(data) { deck in
                        NavigationLink(destination: DeckDetailView(deck: deck)) {
                            Text(deck.name)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(10)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
                .padding()
            }
            .navigationTitle("Decks")
        }
    }
    
    func signIn() {
        print("hello, world")
    }
}

#Preview {
    ContentView()
}
