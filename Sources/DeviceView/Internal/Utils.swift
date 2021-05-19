//
//  Utils.swift
//  
//
//  Created by Łukasz Rutkowski on 05/05/2021.
//

import Foundation
import UIKit

extension UIImage {
    convenience init?(moduleImageNamed imageName: String) {
        self.init(named: imageName, in: .module, compatibleWith: nil)
    }
}

extension CGSize {
    var aspectRatio: CGFloat {
        width / height
    }
}
