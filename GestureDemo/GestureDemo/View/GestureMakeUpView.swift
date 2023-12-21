//
//  GestureMakeUpView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct GestureMakeUpView: View {
    @GestureState private var offset: CGSize = .zero
    @GestureState private var longPress: Bool = false
    var body: some View {
        let longPressAndDrag = LongPressGesture(minimumDuration: 1.0)
            .updating($longPress){ value, state, transition in
                    state = value
            }
            .simultaneously(with: DragGesture())
            .updating($offset){ value, state, transaction in
                state = value.second?.translation ?? .zero
            }
        
        Text("GestureMakeUpView")
        Image(systemName: "hand.point.right.fill")
            .foregroundStyle(longPress ? Color.red : Color.blue)
            .font(.largeTitle)
            .offset(offset)
            .gesture(longPressAndDrag)
    }
}

#Preview {
    GestureMakeUpView()
}
