//
//  SwiftUIView.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 19/04/22.
//

import SwiftUI

struct Play: View {
    @State var selection: Int? = nil
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("play")
                    .resizable()
                    //.aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                Image("botaostart")
                    .resizable()
                    .scaledToFit()
                    .padding(EdgeInsets(top: geometry.size.height * 0, leading: geometry.size.width * 0.4, bottom: geometry.size.height * 0.05, trailing: geometry.size.width * 0.4))
                    .onTapGesture {
                        selection = 1
                    }
                
            }
            .statusBar(hidden: true)
            .navigationBarHidden(true)
            NavigationLink(destination: EmptyView(), tag: 1, selection: $selection) {
                EmptyView()
            }
        }
    }
}
