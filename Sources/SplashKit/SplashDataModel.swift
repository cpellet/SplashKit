// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

public struct SplashScreenData {
    
    public let title: (line1: String, line2: String)
    public let titleImage: Image?
    public let infoContent: [InfoDetailData]
    public let buttonText: String
    public let onButtonTap: () -> Void
    public let tintColor: Color
    
    public init(title: (line1: String, line2: String),
                titleImage: Image?,
                infoContent: [InfoDetailData],
                buttonText: String,
                onButtonTap: @escaping () -> Void,
                tintColor: Color) {
        self.title = title
        self.titleImage = titleImage
        self.infoContent = infoContent
        self.buttonText = buttonText
        self.onButtonTap = onButtonTap
        self.tintColor = tintColor
    }
    
}

public struct InfoDetailData: Identifiable {
    
    public let image: Image
    public let title: String
    public let body: String
    
    public let id = UUID()
    
    public init(image: Image,
                title: String,
                body: String) {
        self.image = image
        self.title = title
        self.body = body
    }
    
}
