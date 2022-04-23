//
//  Intro.swift
//  FashionsCalculator
//
//  Created by Luiz Gustavo Silva Aguiar on 18/04/22.
//

import SwiftUI

struct Intro: View {
    @State var index: Int = 0
    
    var body: some View {
        GeometryReader { geometry in
            let texts = [
                    "Hi! I'm Gabi and I love fashion and shopping, but a few days ago I figure out that the Fashion Industry is one of the mosts polluting ones in the whole world..."
                    , "I have a lot of clothes on my wardrobe that I don't use anymore, and keeping all of them it’s too bad for the environment... "
                    , "So, with the four fundamental operations of Mathematics you can decide to give the right destination for this clothes..."
                    , "What do you think? \nCan you play to help me and the environment?"
            ]
            if index <= 3{
                ZStack(alignment: .center) {
                    Image("backgroundIntro")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    BalloonView(text: texts[index], top: UIScreen.main.bounds.size.height * 0.2, leading: geometry.size.height * 0.04, bottom: 0, trailling: geometry.size.width * 0.5, index: $index)
                }
            }else{
                GameStart()
            }
        }
    }
}
