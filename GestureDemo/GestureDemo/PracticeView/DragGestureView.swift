//
//  DragGestureView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct DragGestureView: View {
    @GestureState private var offset: CGSize = .zero
    @State private var currentPosition: CGSize = .zero
    
    var body: some View {
        Text("드래그 동작")
        let drag = DragGesture()
            .updating($offset) { value, state, transaction in
                state = value.translation
            }
            .onEnded { value in
                // 현재 위치에 드래그 변화량을 더해 새로운 위치를 계산합니다.
                currentPosition.width += value.translation.width
                currentPosition.height += value.translation.height
            }
        
        Image(systemName: "snowflake.circle")
            .resizable()
            .frame(width: 100,height: 100)
            .font(.largeTitle)
            .offset(x: currentPosition.width + offset.width, y: currentPosition.height + offset.height)
            .animation(.easeInOut, value: currentPosition)
            .foregroundStyle(.mint)
            .gesture(drag)
    }
}

#Preview {
    DragGestureView()
}
