//
//  AddDeckButton.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 6/2/25.
//

import SwiftUI
import SwiftUICore

struct AddDeckButton: View {
    var body: some View {
        Button(action: {
            // Handle add deck action
            print("Add deck tapped")
        }) {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(radius: 4)
        }
    }
}
