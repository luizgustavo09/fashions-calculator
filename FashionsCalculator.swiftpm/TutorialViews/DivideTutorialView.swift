//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct DivideTutorialView: View {
    @State var selection: Int? = nil
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("share")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Button() {
                    selection = 1
                } label: {
                    Image("next")
                }
                .foregroundColor(.primaryOrange)
                .padding(EdgeInsets(top: geometry.size.height * 0.6, leading: 0, bottom: 0, trailing: geometry.size.width  * 0.8))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: TimerTutorialView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
