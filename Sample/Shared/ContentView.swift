//
//  ContentView.swift
//  Shared
//
//  Created by Łukasz Rutkowski on 05/05/2021.
//

import SwiftUI
import AppStoreSnapshot

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to phone gallery")
                .font(.headline)
            Text("Select your favorite phone")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Spacer(minLength: 24)

            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    VStack {
                        Text("iPhone 12").font(.headline)
                        DeviceView(.iPhone12) {
                            DeviceContentView().background(Color.white)
                        }
                    }

                    VStack {
                        Text("Also iPhone 12 but upside-down").font(.headline)
                        DeviceView(.iPhone12) {
                            DeviceContentView().background(Color.gray)
                        }
                        .rotationEffect(.degrees(180))
                    }
                }
                .padding()
            }
            .background(Color(.secondarySystemBackground).ignoresSafeArea())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
