//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 21/04/22.
//

import SwiftUI
import Combine

struct StatusView: View {
    
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    
    var body: some View {
        ZStack(){
            VStack{
                ItenView(iconName: "plusIten", numberOfItens: plusStatus, textColor: "red")
                ItenView(iconName: "minusIten", numberOfItens: minusStatus, textColor: "blue")
                ItenView(iconName: "multiplyIten", numberOfItens: multiplyStatus, textColor: "green")
                ItenView(iconName: "divideIten", numberOfItens: divideStatus, textColor: "brown")
            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color("lightgray")))
    }
        
}

struct ItenView: View {
    var iconName: String
    var numberOfItens: Int
    var textColor: String
    var bg: String = "itenbg"
    
    var body: some View {
        ZStack{
            HStack(alignment: .center){
                Image(iconName)
                Text(String(numberOfItens))
                    .font(Font.custom("ArimaMadurai-Black", size: 55))
                    .foregroundColor(Color(textColor))
            }
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color("gray")))
    }
}
