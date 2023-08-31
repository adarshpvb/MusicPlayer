//
//  MusicViewModel.swift
//  Music
//
//  Created by Adarsh Begur on 24/08/23.
//

import Foundation
final class MusicViewModel: ObservableObject{
    private(set) var music: Music
    
    init(music: Music){
        self.music = music
    }
}
struct Music{
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Music(title: "RRR Title Song", description: "Song Composed By M.M Keervani", duration: 325, track: "RRR", image: "pxfuel")
}
