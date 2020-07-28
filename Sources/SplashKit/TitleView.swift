// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

struct TitleView: View {
    
    let title: (line1: String, line2: String)
    let image: AnyView?
    let mainColor: Color
    
    var body: some View {
        
        VStack {
            
            if let image = image {
                image
                    .frame(width: UIScreen.main.bounds.width * 0.7, alignment: .center)
                    .accessibility(hidden: true)
            }
            
            Text(title.line1)
                .font(.system(size: 36, weight: .black, design: .rounded))
            
            Text(title.line2)
                .font(.system(size: 36, weight: .black, design: .rounded))
                .foregroundColor(mainColor)
            
        }
        
    }
    
}
