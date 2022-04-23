//
//  File.swift
//  
//
//  Created by Ariadne Bigheti on 21/04/22.
//

import SwiftUI
import Combine

struct TimerView: View{
    @State private var time: Int = 8

    @Binding var viewIndex: Int
    
        
    init(viewIndex: Binding<Int>){
        self._viewIndex = viewIndex
    }
    
    init(viewIndex: Binding<Int>, time: Int){
        self._viewIndex = viewIndex
        self.time = time
    }
    
    var body: some View{
        let timer = Timer(startTime: $time, viewIndex: $viewIndex)
        ZStack{
            Image("timerbg")
            Text("0:0" + String(timer.time))
                .font(.system(size: 70, weight: .light, design: .default))
                .foregroundColor(Color("orange"))
        }
    }
}

class Timer{
    @Binding var time: Int
    @Binding var viewIndex: Int

    init(startTime: Binding<Int>, viewIndex: Binding<Int>){
        self._time = startTime
        self._viewIndex = viewIndex
        startTimer()
    }
    
    func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if self.time>0{
                self.time-=1
            }else{
                self.time=8
                self.viewIndex+=1
            }
        }
    
    }
    
}
