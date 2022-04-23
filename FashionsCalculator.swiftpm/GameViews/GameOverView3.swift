//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 22/04/22.
//
import SwiftUI

struct GameOverView3: View{
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
            GameOverSubview3(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
                .padding(.bottom, 200)
                .padding(.leading, 50)
        }
    }
}

struct GameOverSubview3: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Image("g2")
            VStack(alignment: .center, spacing:30){
                ItenView(iconName: "minusIten", numberOfItens: minusStatus, textColor: "blue", bg: "bg", spacing: 10)
                    .padding(.top, 30)
                    Text("You sended " + String(minusStatus) + " clothing to garbage")
                    .font(.system(size: 30, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                HStack(alignment: .center, spacing: 10){
                    Image("bad2humanity")
                    Image("bad2environment")
                }
                Text("-" + String(minusStatus*30) + " points")
                    .font(.system(size: 50, weight: .semibold, design: .default))
                    .foregroundColor(Color("purple"))
                HStack(){
                    Button {
                        index+=1
                    } label: {
                        Image("next")
                    }
                    
                }.frame(width: 450, height: 0, alignment: .trailing)
                    .padding(.top, 10)
            }.padding(.leading, 50)

        }.frame(width: 450, height: 500, alignment: .center)
        .padding(.leading, 50)

    }
    
}