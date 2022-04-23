//
//  GameStart.swift
//  FashionsCalculator
//
//  Created by Luiz Gustavo Silva Aguiar on 18/04/22.
//

import SwiftUI

struct GameStart: View {
    @State var selection: Int? = nil
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("backgroundStart")
                    .resizable()
                    .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                NavigationLink(destination: HowToPlayTutorialView()) {
                    Image("playButton")
                }.padding(EdgeInsets(top: geometry.size.height * 0.8, leading: geometry.size.width *  0.55, bottom: geometry.size.height * 0.2, trailing: geometry.size.width * 0.05))
            }
        }
        .statusBar(hidden: true)
        .navigationBarHidden(true)
        
    }
}
