//
//  NoHitTesting.swift
//  
//
//  Created by Łukasz Rutkowski on 05/05/2021.
//

import SwiftUI

/// https://developer.apple.com/forums/thread/650433?answerId=624094022#624094022
///
/// Hack which disables all user interactions on a view.
struct NoHitTesting: ViewModifier {
    func body(content: Content) -> some View {
        SwiftUIWrapper(content: content).allowsHitTesting(false)
    }
}

extension View {
    func userInteractionDisabled() -> some View {
        self.modifier(NoHitTesting())
    }
}

struct SwiftUIWrapper<T: View>: UIViewControllerRepresentable {
    let content: T

    func makeUIViewController(context: Context) -> UIHostingController<T> {
        let vc = UIHostingController(rootView: content)
        vc.view.backgroundColor = .clear
        return vc
    }

    func updateUIViewController(_ uiViewController: UIHostingController<T>, context: Context) {
    }
}
