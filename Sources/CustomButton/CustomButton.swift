//
//  CustomButton.swift
//  CustomButton
//
//  Created by Дмитрий Лисин on 20.11.2019.
//  Copyright © 2019 Дмитрий Лисин. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
public struct CustomButton : View {
    
    var label: String
    var action: () -> Void
    var loading: Bool = false
    var colorButton: Color
    
    public init(label: String, action: @escaping () -> Void, loading: Bool = false, colorButton: Color) {
        self.label = label
        self.action = action
        self.loading = loading
        self.colorButton = colorButton
        
    }
    
    public var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(label)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }
        .padding()
        .background(colorButton)
        .cornerRadius(8)
    }
}
