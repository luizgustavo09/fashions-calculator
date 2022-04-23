//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct MultiplyTutorialView: View {
    @State var selection: Int? = nil
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("multiply")
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
                .padding(EdgeInsets(top: geometry.size.height * 0.6, leading: 0, bottom: 0, trailing: geometry.size.width  * 0.8))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: DivideTutorialView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
