//
//  DeviceContentView.swift
//  Sample
//
//  Created by Łukasz Rutkowski on 05/05/2021.
//

import SwiftUI

struct DeviceContentView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<50, id: \.self) { number in
                Text("Item \(number)")
                    .frame(maxWidth: .infinity)
            }

            Button("Click me", action: {})
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DeviceContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceContentView()
    }
}
