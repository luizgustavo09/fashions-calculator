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
        ZStack(alignment: .topLeading){
            if viewIndex<=clothes.count-1{
                Image(clothes[viewIndex])
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    HStack(alignment: .top){
                        StatusView(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus)
                            .padding(.top, 45)
                            .padding(.leading, 50)
                        Spacer()
                        if didTapButton{
                            TimerView(viewIndex: $viewIndex, time: 8)
                                .padding(.top, 45)
                                .padding(.trailing, 50)
                        }else{
                            TimerView(viewIndex: $viewIndex)
                                .padding(.top, 45)
                                .padding(.trailing, 50)

                        }
                    }
                    Spacer()
                CalculatorView(plusStatus: $plusStatus, minusStatus: $minusStatus, divideStatus: $divideStatus, multiplyStatus: $multiplyStatus, viewIndex: $viewIndex, didTapButton: $didTapButton)
                        .padding(.bottom, 15)
                }
            }
            else{
                GameOverView(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus) //present gameover scene
            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .navigationBarHidden(true)
    }
    
}
