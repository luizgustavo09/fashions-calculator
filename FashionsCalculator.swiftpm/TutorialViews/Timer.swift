//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct Timer: View {
    @State var selection: Int? = nil
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
                        .font(.system(size: 30))
                }
                .foregroundColor(.primaryOrange)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: geometry.size.height * 0.12, trailing: geometry.size.width  * 0.7))
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: Score(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
