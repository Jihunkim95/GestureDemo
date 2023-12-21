//
//  ContentView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var offset: CGSize = .zero
    @GestureState private var longPress: Bool = false
    @State private var dragEnabled: Bool = false
    var body: some View {
        
//            BasicGestureView()
//            OnChangedOnEndedView()
//            UpdatingView()
//            GestureMakeUpView()
//            GestureMakeUpPhaseView()
            //실습문제
            LongPressGestureView()
            DragGestureView()

    }
}
#Preview {
    ContentView()
}
