//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 21/04/22.
//

import SwiftUI

struct GameOverView: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @State var index = 1
    
    var body: some View{
        switch index{
        case 1:
            GameOverView1(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
        case 2:
            GameOverView2(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
        case 3:
            GameOverView3(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
            
        case 4:
            GameOverView4(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
        case 5:
            GameOverView5(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
        case 6:
            GameOverView6(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
        case 0:
            GameStart()
        default:
            GameView()
        }
        
    }
}
