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
        ZStack(){
            Image("calculatorbg")
            HStack{
                Spacer()
                    CalculatorButton(iconName: "plusButton"){
                        plusStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()
                    }
                Spacer()
                    CalculatorButton(iconName: "minusButton"){
                        minusStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()

                    }
                Spacer()
                    CalculatorButton(iconName: "mutiplyButton"){
                        multiplyStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()

                    }
                Spacer()
                    CalculatorButton(iconName: "divideButton"){
                        divideStatus+=1
                        viewIndex+=1
                        didTapButton.toggle()
                    }
                Spacer()
            }
        }
        .frame(width: 846, height: 210)
        .padding(.bottom, 180)
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
