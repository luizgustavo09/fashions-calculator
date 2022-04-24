//
//  File.swift
//
//
//  Created by Ariadne Bigheti on 22/04/22.
//
//
//  File.swift
//
//
//  Created by Ariadne Bigheti on 22/04/22.
//
import SwiftUI

struct GameOverView5: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack (alignment: .bottomLeading){
            Image("gameoverbg3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            GameOverSubview5(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
                .padding(.bottom, 200)
                .padding(.leading, 50)
        }
    }
}

struct GameOverSubview5: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack(alignment: .topLeading){
            VStack(alignment: .center, spacing:30){
                ItenView(iconName: "divideIten", numberOfItens: divideStatus, textColor: "brown", bg: "bg")
                    .padding(.top, 30)
                    Text("You sended " + String(divideStatus) + " clothing to donation")
                    .font(Font.custom("ArimaMadurai-Black", size: 30))
                    .foregroundColor(.white)
                HStack(alignment: .center, spacing: 10){
                    Image("god2humanity")
                    Image("god2environment")
                }
                Text("+" + String(divideStatus*60) + " points")
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
