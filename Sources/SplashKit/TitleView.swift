// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

public struct SplashTitleView: View {
    let title: (line1: String, line2: String)
    let image: AnyView?
    let mainColor: Color
    
    public init(title: (line1: String, line2: String), image: AnyView?, mainColor: Color) {
        self.title = title
        self.image = image
        self.mainColor = mainColor
    }
    
    public var body: some View {
        
        VStack {
            
            if let image = image {
                image
//                    .frame(width: UIScreen.main.bounds.width * 0.7, alignment: .center)
                    .accessibility(hidden: true)
            }
            
            Text(title.line1)
                .splashTitleStyle()
            
            Text(title.line2)
                .splashTitleStyle()
                .foregroundColor(mainColor)
            
        }
        
    }
}

extension Text {
    public func splashTitleStyle() -> Text {
        return self.font(.system(size: 36, weight: .black, design: .rounded))
    }
}
