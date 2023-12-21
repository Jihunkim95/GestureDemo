//
//  ContentView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        //        BasicGestureView()
        //        OnChangedOnEndedView()
        //        UpdatingView()
        //        GestureMakeUpView()
        //        GestureMakeUpPhaseView()
        LongPressGestureView()
    }
    
}
#Preview {
    ContentView()
}

//let cleanTab = TapGesture()
//    .onEnded{ _ in
//        opacityNum = 0.4
//    }
//Image(systemName: "snowflake.circle")
//    .resizable()
//    .frame(width: 100,height: 100)
//    .foregroundStyle(.mint)
//    .gesture(cleanTab)
//    .opacity(opacityNum)
