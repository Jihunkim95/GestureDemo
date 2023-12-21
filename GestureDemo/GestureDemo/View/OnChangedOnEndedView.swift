//
//  OnChangedOnEndedView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct OnChangedOnEndedView: View {
    @State private var magnification: CGFloat = 1.0
    
    var body: some View {
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
        // 제스처 알람
            .onChanged({ value in
                self.magnification = value
                print("Magnifying")
            })
            .onEnded { _ in
                print("Gesture Ended")
            }
        Text("확대")
        Image(systemName: "plus.magnifyingglass")
            .resizable()
            .frame(width: 100, height: 90)
            .font(.largeTitle)
            .scaleEffect( magnification > 1.0 ? magnification : 1.0)
            .gesture(magnificationGesture)
    }
}

#Preview {
    OnChangedOnEndedView()
}
