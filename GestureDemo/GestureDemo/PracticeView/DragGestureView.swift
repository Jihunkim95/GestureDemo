//
//  DragGestureView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct DragGestureView: View {
    @State private var offset: CGSize = .zero

    var body: some View {
        Text("드래그 동작")
        let drag = DragGesture()
            .onChanged{ value in
                self.offset = value.translation
            }
        
        Image(systemName: "snowflake.circle")
            .resizable()
            .frame(width: 100,height: 100)
            .font(.largeTitle)
            .foregroundStyle(.mint)
            .offset(offset)
            .gesture(drag)
    }
}

#Preview {
    DragGestureView()
}
