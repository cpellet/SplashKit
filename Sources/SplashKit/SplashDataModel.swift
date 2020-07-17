// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

public struct SplashScreenData {
    
    public let title: (line1: String, line2: String)
    public let titleImage: Image
    public let infoContent: [InfoDetailData]
    public let buttonText: String
    public let onButtonTap: () -> Void
    public let tintColor: Color
    
}

public struct InfoDetailData: Identifiable {
    
    public let image: Image
    public let title: String
    public let body: String
    
    public let id = UUID()
    
}
