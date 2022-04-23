//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 22/04/22.
//
import SwiftUI

struct GameOverView6: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack (alignment: .bottomLeading){
            Image("gameoverbg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            GameOverSubview6(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus, index: $index)
                .padding(.bottom, 200)
                .padding(.leading, 50)
        }
    }
}

struct GameOverSubview6: View{
    var plusStatus: Int
    var minusStatus: Int
    var divideStatus: Int
    var multiplyStatus: Int
    @Binding var index: Int
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Image("g3")
            VStack(alignment: .center, spacing:30){
                TextsView(plusStatus: plusStatus, minusStatus: minusStatus, divideStatus: divideStatus, multiplyStatus: multiplyStatus)
                HStack(alignment: .center){
                    Button(action: {
                        index = 0
                    }, label: {
                        Image("homeButton")
                    })
                    Button(action: {
                        index += 1
                    }, label: {
                        Image("playAgainButton")
                    })
                }

            }.padding(.top, 20)
            .padding(.leading, 58)
        }

    }
    
}

struct TextsView: View{
    var result: Int
    
    init(plusStatus: Int, minusStatus: Int, divideStatus: Int, multiplyStatus: Int){
        self.result = (minusStatus * -30)+(multiplyStatus*30)+(divideStatus*60)
    }
    
    var body: some View{
        VStack(alignment: .center, spacing: 22){
            HStack(alignment: .center, spacing: 30){
                Text("score: ")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold, design: .default))
                Text(String(result) + " points")
                    .foregroundColor(Color("purple"))
                    .font(.system(size: 50, weight: .semibold, design: .default))

            }
            Text("you are a beginner, good job...")
                .foregroundColor(Color("yellow"))
                .font(.system(size: 30, weight: .semibold, design: .default))

            Text("but you can do better for the environment!!")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .semibold, design: .default))
        }
    }
}
