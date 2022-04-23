//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 22/04/22.
//
import SwiftUI

struct GameOverView1: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack (alignment: .bottomLeading){
            Image("gameoverbg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            GameOverSubview1(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
                .padding(.bottom, 200)
                .padding(.leading, 50)
        }
    }
}

struct GameOverSubview1: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack(alignment: .leading){
            Image("g1")
            VStack(alignment: .trailing, spacing:10){
                HStack(alignment: .center){
                    ItenView(iconName: "plusIten", numberOfItens: plusStatus, textColor: "red", bg: "bg", spacing: 10)
                    ItenView(iconName: "minusIten", numberOfItens: minusStatus, textColor: "blue", bg: "bg", spacing: 10)
                    ItenView(iconName: "multiplyIten", numberOfItens: multiplyStatus, textColor: "green", bg: "bg", spacing: 10)
                    ItenView(iconName: "divideIten", numberOfItens: divideStatus, textColor: "brown", bg: "bg", spacing: 10)
                }
                .padding(.top, 115)
                .frame(width: 587, height: 250)
                Button {
                    index+=1
                } label: {
                    Image("next")
                }.padding(.bottom, 90)
                    .padding(.trailing, 30)
            }
        }
    }
    
}
