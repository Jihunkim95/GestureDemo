//
//  BasicGestureView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct BasicGestureView: View {
    
    @State private var animate = false

    var body: some View {
        // 코드의 재사용성
        let tap = TapGesture()
            .onEnded{ _ in
                print("Tapped")
            }
        
        // 더블 탭
        let doubleTap = TapGesture(count: 2)
            .onEnded{ _ in
                print("doubleTaped")
                animate.toggle()
            }
        
        // 롱 프레스 제스처
        let longPress = LongPressGesture(minimumDuration: 1,maximumDistance: 5)
            .onEnded{ _ in
                print("Long Press")
            }
        
        VStack {
            Text("Tap")
            Image(systemName: "hand.point.right.fill")
                .gesture(tap)
        }
        .padding()
        
        VStack {
            Text("DoubleTap")
            Image(systemName: "hand.point.right.fill")
                .gesture(doubleTap)
                .font(.system(size: 50))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple, .gray)
//                .symbolEffect(.bounce, options: .repeat(1) .speed(1.0), value: animate)

        }
        .padding()
        
        VStack {
            Text("Long Press Gesture")
            Image(systemName: "hand.point.right.fill")
                .gesture(longPress)
        }
        .padding()
    }
}

#Preview {
    BasicGestureView()
}
