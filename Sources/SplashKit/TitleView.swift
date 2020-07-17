// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

struct TitleView: View {
    
    let title: (line1: String, line2: String)
    let image: Image
    let mainColor: Color
    
    var body: some View {
        
        VStack {
            
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, alignment: .center)
                .accessibility(hidden: true)
            
            Text(title.line1)
                .fontWeight(.black)
                .font(.system(size: 36))
            
            Text(title.line2)
                .fontWeight(.black)
                .font(.system(size: 36))
                .foregroundColor(mainColor)
            
        }
        
    }
    
}
