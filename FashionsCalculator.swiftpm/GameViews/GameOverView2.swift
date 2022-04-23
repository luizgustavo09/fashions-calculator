//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 22/04/22.
//

import SwiftUI

struct GameOverView2: View{
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
            GameOverSubview2(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
                .padding(.bottom, 200)
                .padding(.leading, 50)
        }
    }
}

struct GameOverSubview2: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack(alignment: .topLeading){
            VStack(alignment: .center, spacing:30){
            
                ItenView(iconName: "plusIten", numberOfItens: plusStatus, textColor: "red", bg: "bg")
                    .padding(.top, 30)
                    Text("You sended " + String(plusStatus) + " clothing to the wardrobe")
                    .font(Font.custom("ArimaMadurai-Black", size: 30))
                    .foregroundColor(.white)
                HStack(alignment: .center, spacing: 10){
                    Image("bad2humanity")
                    Image("bad2environment")
                }
                Text("+" + String(plusStatus*0) + " points")
                    .font(Font.custom("ArimaMadurai-Black", size: 50))
                    .foregroundColor(Color("purple"))
                HStack(){
                    Button {
                        index+=1
                    } label: {
                        Text("next >>")
                            .font(Font.custom("ArimaMadurai-Black", size: 30))
                            .foregroundColor(Color("orange"))
                    }
                }
            }.padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))

        }.background(RoundedRectangle(cornerRadius: 30).foregroundColor(.black))
    }
    
}
