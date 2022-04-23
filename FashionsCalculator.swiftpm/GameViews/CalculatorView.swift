//
//  SwiftUIView.swift
//  
//
//  Created by Ariadne Bigheti on 21/04/22.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var plusStatus: Int
    @Binding var minusStatus: Int
    @Binding var divideStatus: Int
    @Binding var multiplyStatus: Int
    @Binding var viewIndex: Int
    @Binding var didTapButton: Bool

    var body: some View {
        ZStack(alignment: .center){
            HStack(alignment: .center, spacing: 50){
                    CalculatorButton(iconName: "plusButton"){
                        plusStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()
                    }
                    CalculatorButton(iconName: "minusButton"){
                        minusStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()

                    }
                    CalculatorButton(iconName: "mutiplyButton"){
                        multiplyStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()

                    }
                    CalculatorButton(iconName: "divideButton"){
                        divideStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()
                    }
            }.padding(EdgeInsets(top: 30, leading: 50, bottom: 30, trailing: 50))

        }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color("gray")))
    }
}

struct CalculatorButton: View{
    var iconName: String
    var action: () -> Void
    
    var body: some View{
        Button(action: {
            self.action()
        }){
            Image(iconName)
        }
    }
}
