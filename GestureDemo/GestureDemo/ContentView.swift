//
//  ContentView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // 코드의 재사용성
        let tap = TapGesture()
            .onEnded{ _ in
                print("Tapped")
            }
        
        VStack {
            Image(systemName: "hand.point.right.fill")
                .gesture(tap)
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
