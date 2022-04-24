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
            Image("gameoverbg1")
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
            VStack(alignment: .leading, spacing:30){
                Text("This is your score:")
                    .font(Font.custom("ArimaMadurai-Black", size: 30))
                    .foregroundColor(.white)

                HStack(alignment: .center){
                    ItenView(iconName: "plusIten", numberOfItens: plusStatus, textColor: "red", bg: "bg")
                    ItenView(iconName: "minusIten", numberOfItens: minusStatus, textColor: "blue", bg: "bg")
                    ItenView(iconName: "multiplyIten", numberOfItens: multiplyStatus, textColor: "green", bg: "bg")
                    ItenView(iconName: "divideIten", numberOfItens: divideStatus, textColor: "brown", bg: "bg")
                }
                VStack{
                HStack(){
                    Button {
                        index+=1
                    } label: {
                        Text("next >>")
                            .font(Font.custom("ArimaMadurai-Black", size: 30))
                            .foregroundColor(Color("orange"))
                    }
                }
            }
            }.padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))

        }.background(RoundedRectangle(cornerRadius: 30).foregroundColor(.black))
    }
    
}
