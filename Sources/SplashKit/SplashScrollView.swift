// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

/// Use `SplashScrollView` if you want to control the content of the splash screen.
public struct SplashScrollView<T>: View where T: View {
    public let buttonText: String
    public let buttonColor: Color
    public let buttonTap: () -> Void
    public let content: () -> T
    
    public init(
        buttonText: String,
        buttonColor: Color,
        buttonTap: @escaping () -> Void,
        content: @escaping () -> T
    ) {
        self.buttonText = buttonText
        self.buttonColor = buttonColor
        self.buttonTap = buttonTap
        self.content = content
    }
    
    public var body: some View {
        
        ZStack {
            
            ScrollView(showsIndicators: false) {
                
                content()
                
                Spacer(minLength: 80)
                
            }
            
            VStack {
                
                Spacer()
                
//                Button {
//                    buttonTap()
//                } label: {
//                    Text(buttonText)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .padding()
//                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(buttonColor))
//                        .padding(.bottom)
//                }
//                .padding(.horizontal)
//                .padding(.top)
                SplashButton(buttonText: buttonText, buttonColor: buttonColor, buttonTap: buttonTap)
                    .padding(.top)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(.systemBackground),
                                                        Color(.systemBackground),
                                                        Color(.systemBackground),
                                                        Color(.systemBackground).opacity(0.0)]),
                            startPoint: .center,
                            endPoint: .top)
                            .edgesIgnoringSafeArea(.bottom)
                    )
                
            }
            
        }
        
    }
}
