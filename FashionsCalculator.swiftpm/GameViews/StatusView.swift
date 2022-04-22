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
        ZStack{
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
        .padding(EdgeInsets(top: 50, leading: 50, bottom: 950, trailing: 850))
    }
        
}

struct ItenView: View {
    var iconName: String
    var numberOfItens: Int
    var textColor: String
    
    var body: some View {
        ZStack{
            Image("itenbg")
            HStack{
                Spacer()
                Image(iconName)
                Spacer()
                Text(String(numberOfItens))
                    .font(.system(size: 55, weight: .light, design: .default))
                    .foregroundColor(Color(textColor))
                Spacer()
            }
        }
    }
}
