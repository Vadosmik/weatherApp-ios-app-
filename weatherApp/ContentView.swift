//
//  ContentView.swift
//  weatherApp
//
//  Created by Wadim Mikanowicz on 20/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(.cyan)
    }
}

#Preview {
    ContentView()
}
