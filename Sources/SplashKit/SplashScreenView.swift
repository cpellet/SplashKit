// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

public struct SplashScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let content: SplashScreenData
    
    public init(_ contentData: SplashScreenData) {
        self.content = contentData
    }
    
    public var body: some View {
        
        ScrollView {
            
            VStack(alignment: .center) {
                
                Spacer()
                
                TitleView(title: content.title, image: content.titleImage, mainColor: content.tintColor)
                
                InfoContainerView(content: content.infoContent, mainColor: content.tintColor)
                
                Spacer(minLength: 30)
                
                Button {
                    content.onButtonTap()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text(content.buttonText)
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(content.tintColor))
                        .padding(.bottom)
                }
                .padding(.horizontal)
                
            }
            
        }
        
    }
    
}
