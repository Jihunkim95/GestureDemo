//
//  LongPressGestureView.swift
//  GestureDemo
//
//  Created by 김지훈 on 2023/12/21.
//

import SwiftUI

struct LongPressGestureView: View {
    @GestureState private var longPressTap = false
    @State private var isPressed = false
    

    var body: some View {
        let longPressBeforeDrag = LongPressGesture(minimumDuration: 1.0)
            .updating($longPressTap) { value, state, transaction in
                state = value
            }
            .onChanged { _ in
                self.isPressed.toggle()
            }
            .onEnded { _ in
                self.isPressed.toggle()
            }

  
        Text("LongPressGesture사용")
        Image(systemName: "snowflake.circle")
            .resizable()
            .frame(width: 100,height: 100)
            .foregroundStyle(.mint)
            .opacity(isPressed ? 0.4 : 1.0)
            .scaleEffect(longPressTap ? 0.5 : 1.0)
            .animation(.easeOut, value: isPressed)
            .gesture(longPressBeforeDrag)
            
        }

    }

#Preview {
    LongPressGestureView()
}
