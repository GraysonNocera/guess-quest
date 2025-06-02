//
//  DeckDetailView.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 6/2/25.
//

import SwiftUI
import SwiftUICore

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
