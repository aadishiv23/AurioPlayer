//
//  MainView.swift
//  FilePlay
//
//  Created by Aadi Shiv Malhotra on 8/14/22.
//

import Foundation
import SwiftUI

struct MainView : View {
    @ObservedObject var data : internalData
    var body: some View {
        TabView {
            ContentView(data: data)
                .tabItem {
                    Label("Home", systemImage: "person.crop.circle.fill")
                }
        }
    }
}


