//
//  ContentView.swift
//  appEstructuraProyectoSwiftUI
//
//  Created by Felipe Hernandez on 20/02/21.
//

import SwiftUI

struct ContentView: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
