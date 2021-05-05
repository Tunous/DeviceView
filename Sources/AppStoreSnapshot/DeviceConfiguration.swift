//
//  DeviceConfiguration.swift
//  
//
//  Created by Łukasz Rutkowski on 05/05/2021.
//

import UIKit

public struct DeviceConfiguration {
    public let maskImage: UIImage
    public let frameImage: UIImage
    public let screenWidth: CGFloat
    public let screenHeight: CGFloat

    public init(
        maskImage: UIImage,
        frameImage: UIImage,
        screenWidth: CGFloat,
        screenHeight: CGFloat
    ) {
        self.maskImage = maskImage
        self.frameImage = frameImage
        self.screenWidth = screenWidth
        self.screenHeight = screenHeight
    }

    public static let iPhone12 = DeviceConfiguration(
        maskImage: UIImage(moduleImageNamed: "iPhone 12 - Mask")!,
        frameImage: UIImage(moduleImageNamed: "iPhone 12 - Frame")!,
        screenWidth: 1170,
        screenHeight: 2532
    )
}
