//
//  GestureMakeUpPhaseView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct GestureMakeUpPhaseView: View {
    @GestureState private var offset: CGSize = .zero
    @GestureState private var longPress: Bool = false
    @State private var dragEnabled: Bool = false
    
    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
            .onEnded{ value in
                self.dragEnabled = true
                
            }
             .sequenced(before: DragGesture())
             .updating($offset){ value, state, transaction in
                 
                 switch value {
                 case .first(true):
                     print("Long press in progress")
                     
                 case .second(true, let drag):
                     
                     state = drag?.translation ?? .zero
                     print("Long press in progress2")
                 default: break
                 }
             }
             .onEnded{ value in
                 self.dragEnabled = false
                 
             }
  
        Text("GestureMakeUpPhaseView")
        Image(systemName: "hand.point.right.fill")
            .foregroundStyle(dragEnabled ? Color.green : Color.blue)
            .font(.largeTitle)
            .offset(offset)
            .gesture(longPressBeforeDrag)
    }
}

#Preview {
    GestureMakeUpPhaseView()
}
