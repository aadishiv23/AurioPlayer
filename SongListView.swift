//
//  SongListView.swift
//  FilePlay
//
//  Created by Aadi Shiv Malhotra on 7/22/22.
//

import Foundation
import SwiftUI

struct SongListView : View {
    var album : Album
    var song : Song
    
    var body: some View {
        ZStack {
            Image(album.image).resizable()
            Blur(style: .systemChromeMaterialDark).edgesIgnoringSafeArea(.all)
            VStack {
                NavigationLink(
                    destination: PlayerView(album: album, song: song),
                    label:  {
                        HStack {
                            ZStack {
                                Circle().frame(width: 60, height: 60, alignment: .center).foregroundColor(.blue)
                                Circle().frame(width: 20, height: 20, alignment: .center).foregroundColor(.white)
                            }
                            Text(song.name).bold()
                            Spacer()
                            Text(song.time)
                        }.padding(20)
                    }).buttonStyle(PlainButtonStyle())
            }
        }
    }
}

