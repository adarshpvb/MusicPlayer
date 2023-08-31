//
//  MusicView.swift
//  Music
//
//  Created by Adarsh Begur on 20/08/23.
//

import SwiftUI

struct MusicView: View {
    @StateObject var musicVM: MusicViewModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0){
            Image(musicVM.music.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            ZStack{
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24){
                    VStack(alignment: .leading, spacing: 8){
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: musicVM.music.duration) ?? musicVM.music.duration.formatted() + "S" )
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Text(musicVM.music.title)
                        .font(.title)
                    
                    Button{
                        showPlayer = true
                    }label:{
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }
                    
                    Text(musicVM.music.description)
                        .font(.title3)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(musicVM: musicVM)
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static let musicVM = MusicViewModel(music: Music.data)
    static var previews: some View {
        MusicView(musicVM: musicVM)
            .environmentObject(AudioManager())
    }
}
