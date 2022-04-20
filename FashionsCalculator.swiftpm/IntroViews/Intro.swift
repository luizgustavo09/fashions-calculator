//
//  Intro.swift
//  FashionsCalculator
//
//  Created by Luiz Gustavo Silva Aguiar on 18/04/22.
//

import SwiftUI

struct Intro: View {
    @EnvironmentObject var viewModel: IntroViewModel
    var body: some View {
        GeometryReader { geometry in
            let texts = [
                    "Hi! I'm Gabi and I love the fashion and shopping, but a few days ago I figure out that Fashion Industry is one of the mosts pollutants in the whole world..."
                    , "I had a lot of clothes on my wardrobe that I don't use anymore and just heaping its, it’s too bad for the environment... "
                    , "So, with the four fundamentals operations you can decide give the right destination for this clothes..."
                    , "What you say me? Can you help me and the environment?"
            ]
            ZStack {
                Image("backgroundIntro")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                BalloonView(text: texts[viewModel.index], top: UIScreen.main.bounds.size.height * 0.5, leading: geometry.size.height * 0.04, bottom: 0, trailling: geometry.size.width * 0.5, index: $viewModel.index, start: (viewModel.index + 1 == texts.count))
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
        }
    }
}
