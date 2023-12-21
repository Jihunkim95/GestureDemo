//
//  UpdatingView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct UpdatingView: View {
    @GestureState private var offset: CGSize = .zero

    var body: some View {
        let drag = DragGesture()
            .updating($offset){ dragValue, state, transaction in
                state = dragValue.translation
            }
        Image(systemName: "hand.point.right.fill")
            .font(.largeTitle)
            .offset(offset)
            .gesture(drag)
    }
}

#Preview {
    UpdatingView()
}
