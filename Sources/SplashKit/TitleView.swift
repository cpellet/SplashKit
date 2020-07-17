//
//  SwiftUIView.swift
//  
//
//  Created by Ben Robinson on 17/7/2020.
//

import SwiftUI

private struct TitleView: View {
    
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
