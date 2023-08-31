//
//  MusicApp.swift
//  Music
//
//  Created by Adarsh Begur on 20/08/23.
//

import SwiftUI

@main
struct MusicApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
