//
//  View_Extensions.swift
//  Food_Delivery_App_Template
//
//  Created by Shahrear Hossain on 17/4/24.
//

import SwiftUI

// offset key

struct OffsetKey: PreferenceKey{
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension View {
    @ViewBuilder
    func offsetX(completion: @escaping (CGFloat) -> ()) -> some View {
        self
            .overlay{
                GeometryReader {
                    let minX = $0.frame(in: .scrollView(axis: .horizontal)).minX
                    
                    Color.clear
                        .preference(key: OffsetKey.self,value: minX)
                        .onPreferenceChange(OffsetKey.self, perform: completion)
                }
            }
    }
}
