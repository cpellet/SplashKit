// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

struct InfoDetailView: View {
    
    let content: InfoDetailData
    let mainColor: Color
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            content.image
                .font(.largeTitle)
                .foregroundColor(mainColor)
                .padding()
                .accessibility(hidden: true)
            
            VStack(alignment: .leading) {
                
                Text(content.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)
                
                Text(content.body)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                
            }
            
        }
        .padding(.top)
        
    }
    
}
