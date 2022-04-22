//
//  SwiftUIView.swift
//  
//
//  Created by Ariadne Bigheti on 21/04/22.
//

import SwiftUI

struct GameView: View {
    @State private var plusStatus: Int = 0
    @State private var minusStatus: Int = 0
    @State private var multiplyStatus: Int = 0
    @State private var divideStatus: Int = 0
    @State private var viewIndex: Int = 0
    @State private var didTapButton = false
    private var clothes: [String] = ["trousers", "overalls", "sweater", "coat", "jeans"]

    var body: some View {
        ZStack(alignment: .bottom){
            
            if viewIndex<=clothes.count-1{
                Image(clothes[viewIndex])
                    .resizable()
                    .scaledToFill()
                if didTapButton{
                    TimerView(viewIndex: $viewIndex, time: 8)
                }else{
                    TimerView(viewIndex: $viewIndex)
                }
                StatusView(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus)
                CalculatorView(plusStatus: $plusStatus, minusStatus: $minusStatus, divideStatus: $divideStatus, multiplyStatus: $multiplyStatus, viewIndex: $viewIndex, didTapButton: $didTapButton)
            }
            else{
                GameOverView() //present gameover scene
            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .navigationBarHidden(true)
    }
    
}
