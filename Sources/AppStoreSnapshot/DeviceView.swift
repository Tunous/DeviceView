//
//  DeviceView.swift
//  
//
//  Created by Łukasz Rutkowski on 03/05/2021.
//

import SwiftUI

public struct DeviceView<Content: View>: View {
    private let content: Content
    private let device: DeviceConfiguration

    @Environment(\.colorScheme) private var colorScheme
    
    public init(
        _ device: DeviceConfiguration,
        @ViewBuilder content: () -> Content
    ) {
        self.device = device
        self.content = content()
    }
    
    public var body: some View {
        GeometryReader { geometry in
            let widthScale = geometry.size.width / device.frameImage.size.width
            let heightScale = geometry.size.height / device.frameImage.size.height
            let scale = min(widthScale, heightScale)

            ZStack {
                content.frame(
                    width: (device.screenWidth * scale) + 2,
                    height: (device.screenHeight * scale) + 2
                )

                ZStack {
                    Image(uiImage: device.frameImage)
                        .resizable()

                    Image(uiImage: device.statusBarImage)
                        .resizable()
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
                .userInteractionDisabled()
            }
            .mask(Image(uiImage: device.maskImage).resizable())
        }
        .aspectRatio(device.frameImage.size.aspectRatio, contentMode: .fit)
    }
}

struct DeviceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                Text("Top")

                HStack {
                    Text("Left")

                    DeviceView(.iPhone12) {
                        Text("This is content inside iPhone 12")
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.yellow)
                    }
                    Text("Right")
                }

                Text("Bottom")
            }
            .padding()

            DeviceView(.iPhone12) {
                ScrollView {
                    ForEach(0..<50, id: \.self) { number in
                        Text("Item \(number)").frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                    }

                    Button("Click me", action: {})
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            }
        }
    }
}
