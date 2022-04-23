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
                Spacer()
                ItenView(iconName: "plusIten", numberOfItens: plusStatus, textColor: "red")
                Spacer()
                ItenView(iconName: "minusIten", numberOfItens: minusStatus, textColor: "blue")
                Spacer()
                ItenView(iconName: "multiplyIten", numberOfItens: multiplyStatus, textColor: "green")
                Spacer()
                ItenView(iconName: "divideIten", numberOfItens: divideStatus, textColor: "brown")
                Spacer()
            }
            .frame(width: 113, height: 400)
        }
        .padding(.top, 50)
        .padding(.leading, 20)

    }
        
}

struct ItenView: View {
    var iconName: String
    var numberOfItens: Int
    var textColor: String
    var bg: String = "itenbg"
    var spacing: CGFloat = 20
    
    var body: some View {
        ZStack{
            Image(bg)
            HStack(alignment: .center, spacing: spacing){
                Image(iconName)
                Text(String(numberOfItens))
                    .font(.system(size: 55, weight: .light, design: .default))
                    .foregroundColor(Color(textColor))
            }
        }
    }
}
