//
//  ContentView.swift
//  Music
//
//  Created by Adarsh Begur on 20/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MusicView(musicVM: MusicViewModel(music: Music.data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
