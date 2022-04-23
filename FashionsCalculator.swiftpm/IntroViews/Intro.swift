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
                    "Hi! I'm Gabi and I love the fashion and shopping, but a few days ago I figure out that Fashion Industry is one of the mosts pollutants in the whole world..."
                    , "I had a lot of clothes on my wardrobe that I don't use anymore and just heaping its, it’s too bad for the environment... "
                    , "So, with the four fundamentals operations you can decide give the right destination for this clothes..."
                    , "What you say me? Can you help me and the environment?"
            ]
            if index <= 3{
                ZStack(alignment: .center) {
                    Image("backgroundIntro")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    BalloonView(text: texts[index], top: UIScreen.main.bounds.size.height * 0.5, leading: geometry.size.height * 0.04, bottom: 0, trailling: geometry.size.width * 0.5, index: $index)
                }
            }else{
                GameStart()
            }
        }
    }
}
