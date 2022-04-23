//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct PlusTutorialView: View {
    @State var selection: Int? = nil
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("add")
                    .resizable()
                    //.aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                Button() {
                    selection = 1
                } label: {
                    Text("next >>")
                        .font(Font.custom("ArimaMadurai-Black", size: 30))
                        .foregroundColor(Color("orange"))

                }
                .foregroundColor(.primaryOrange)
                .padding(EdgeInsets(top: geometry.size.height * 0.6, leading: geometry.size.width  * 0.8, bottom: 0, trailing: 0))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: SubtractTutorialView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
