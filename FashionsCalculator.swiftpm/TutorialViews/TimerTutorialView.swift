//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct TimerTutorialView: View {
    @State var selection: Int? = nil
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("timer")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Button() {
                    selection = 1
                } label: {
                    Text("next >>")
                        .font(Font.custom("ArimaMadurai-Black", size: 30))
                        .foregroundColor(Color("orange"))
                }
                .foregroundColor(.primaryOrange)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: geometry.size.height * 0.12, trailing: geometry.size.width  * 0.7))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: ScoreTutorialView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
