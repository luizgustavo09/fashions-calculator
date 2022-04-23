//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct ScoreTutorialView: View {
    @State var selection: Int? = nil
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("score")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Button() {
                    selection = 1
                } label: {
                    Image("next")

                }
                .foregroundColor(.primaryOrange)
                .padding(EdgeInsets(top: 0, leading: geometry.size.width  * 0.80, bottom: 0, trailing:0))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: PlayView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
