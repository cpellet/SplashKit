# SplashKit

SplashKit provides an easy way to create native-looking splash screen for iOS apps.

## Usage

For out of the box ease of use, create an instance of `SplashScreenView` in your SwiftUI application, providing it with the required data.

For example:

```swift
import SwiftUI
import SplashKit

struct ContentView: View {
    var body: some View {
        let content = SplashScreenData(
            title: ("Welcome to", "ThisExampleApp"),
            titleImage: AnyView(Image("my-onboarding-image")),
            infoContent: [
                InfoDetailData(
                    image: Image(systemName: "hand.wave.fill"),
                    title: "Hello there!",
                    body: "We're excited to welcome you to ThisExampleApp."
                ),
                InfoDetailData(
                    image: Image(systemName: "7.circle.fill"),
                    title: "7 great tools",
                    body: "Explore 7 brilliant tools to improve your life in countless ways."
                )
            ],
            buttonText: "Continue",
            onButtonTap: {
                // More code here
            },
            tintColor: .blue
        )

        return SplashScreenView(content)
            .padding(.horizontal, 4)
    }
}
```

## Installation

Recommended installation is via Swift Package Manager. Use the Xcode GUI to add SplashKit as a dependency using the url `https://github.com/benrobinson16/SplashKit`
