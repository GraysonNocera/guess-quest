//
//  SettingsButton.swift
//  HeadsUp
//
//  Created by Grayson Nocera on 6/2/25.
//

import SwiftUICore
import SwiftUI

struct SettingsButton: View {
    var body: some View {
        NavigationLink(destination: SettingsView()) {
            Image(systemName: "gear")
                .font(.title)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
