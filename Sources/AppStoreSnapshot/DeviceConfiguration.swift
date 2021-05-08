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
    public let statusBarImage: UIImage
    public let screenWidth: CGFloat
    public let screenHeight: CGFloat

    public init(
        maskImage: UIImage,
        frameImage: UIImage,
        statusBarImage: UIImage,
        screenWidth: CGFloat,
        screenHeight: CGFloat
    ) {
        self.maskImage = maskImage
        self.frameImage = frameImage
        self.statusBarImage = statusBarImage
        self.screenWidth = screenWidth
        self.screenHeight = screenHeight
    }

    public static let iPhone12 = DeviceConfiguration(
        maskImage: UIImage(moduleImageNamed: "iPhone 12 - Mask")!,
        frameImage: UIImage(moduleImageNamed: "iPhone 12 - Frame")!,
        statusBarImage: UIImage(moduleImageNamed: "iPhone 12 - Status Bar")!,
        screenWidth: 1170,
        screenHeight: 2532
    )

    public static let iPhoneSE = DeviceConfiguration(
        maskImage: UIImage(moduleImageNamed: "iPhone SE - Mask")!,
        frameImage: UIImage(moduleImageNamed: "iPhone SE - Frame")!,
        statusBarImage: UIImage(moduleImageNamed: "iPhone SE - Status Bar")!,
        screenWidth: 1320,
        screenHeight: 2346
    )

    public static let iPadPro = DeviceConfiguration(
        maskImage: UIImage(moduleImageNamed: "12.9-inch iPad Pro - Mask")!,
        frameImage: UIImage(moduleImageNamed: "12.9-inch iPad Pro - Frame")!,
        statusBarImage: UIImage(moduleImageNamed: "12.9-inch iPad Pro - Status Bar")!,
        screenWidth: 2542,
        screenHeight: 3391
    )
}
