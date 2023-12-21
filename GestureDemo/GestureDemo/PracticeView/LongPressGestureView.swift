//
//  LongPressGestureView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct LongPressGestureView: View {
    //투명
    @State private var opacityNum: Double = 1
    //이미지 크기
    @State private var magnification: CGFloat = 1.0

    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
            .onChanged{ _ in
                opacityNum = 0.4
                magnification = 1.5
            }
            .onEnded{ _ in
                magnification = 1.0
                opacityNum = 1
            }

  
        
        Image(systemName: "snowflake.circle")
            .resizable()
            .frame(width: 100,height: 100)
            .font(.largeTitle)
            .foregroundStyle(.mint)
            .scaleEffect(magnification)
            .gesture(longPressBeforeDrag)
            .opacity(opacityNum)
        }

    }
}

#Preview {
    LongPressGestureView()
}
