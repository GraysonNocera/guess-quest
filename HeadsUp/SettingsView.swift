import SwiftUI

struct SettingsView: View {
    @AppStorage("timeLimit") private var timeLimit: Double = 60
//    @State private var timeLimit: Double = 60
    @State private var soundEnabled: Bool = true
    @State private var vibrationEnabled: Bool = true
    @State private var darkModeEnabled: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Game Settings")) {
                    VStack(alignment: .leading) {
                        Text("Time Limit: \(Int(timeLimit)) seconds")
                        Slider(value: $timeLimit, in: 30...180, step: 5)
                    }
                    .padding(.vertical, 8)
                    
//                    Toggle("Sound Effects", isOn: $soundEnabled)
//                    Toggle("Vibration", isOn: $vibrationEnabled)
                }
                
//                Section(header: Text("Appearance")) {
//                    Toggle("Dark Mode", isOn: $darkModeEnabled)
//                }
                
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.0")
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
        }
//        .onAppear {
//            timeLimit = UserDefaults().double(forKey: "timeLimit")
//        }
//        .onDisappear {
//            UserDefaults().set(timeLimit, forKey: "timeLimit")
//            print("leaving")
//        }
    }
}
