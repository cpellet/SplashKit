//
//  SplashScrollView.swift
//  
//
//  Created by Ben Robinson on 11/10/2020.
//

import SwiftUI

public struct SplashScrollView<Content>: View where Content: View {
    public let buttonText: String
    public let buttonColor: Color
    public let buttonTap: () -> Void
    public let content: () -> Content
    
    public var body: some View {
        
        ZStack {
            
            ScrollView {
                
                content()
                
            }
            
            VStack {
                
                Spacer()
                
                Button {
                    buttonTap()
                } label: {
                    Text(buttonText)
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(buttonColor))
                        .padding(.bottom)
                }
                .padding(.horizontal)
                .padding(.top)
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
