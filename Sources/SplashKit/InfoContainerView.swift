// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

private struct InfoContainerView: View {
    
    let content: [InfoDetailData]
    let mainColor: Color
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ForEach(content) { data in
                
                InfoDetailView(content: data, mainColor: mainColor)
                
            }
            
        }
        .padding()
        
    }
    
}
