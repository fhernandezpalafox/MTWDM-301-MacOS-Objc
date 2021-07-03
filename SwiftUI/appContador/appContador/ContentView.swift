//
//  ContentView.swift
//  appContador
//
//  Created by Felipe Hernandez on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    //TODO: Logica
    @State var contador : Int = 0
    
    var body: some View {
        VStack{
            TopBar()
                .shadow(radius: 5 )
            Spacer()
            VStack(alignment: .center){
                Text("You have pushed the button this many times:")
                Text("\(contador)")
                    .font(.system(size:50))
            }
            Spacer()
            FloactionButton(contador: $contador)
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct FloactionButton : View {
    
    @Binding var contador : Int
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        contador =  contador + 1
                    }, label: {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                    )
                    .padding(20)
                    .foregroundColor(.white)
                    .background(Color.init(hex: "#2c97f3"))
                    .cornerRadius(50)
                    .shadow(radius: 5)
                }.padding(.trailing, 30)
                //.background(Color.red)
            }.frame(height:75, alignment: .center)
        }
    }
}


struct TopBar : View {
    var body: some View {
        
        VStack(spacing: 20) {
            HStack{
                Spacer()
                Text("SwiftUI Demo Home Page")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
        }.padding(.top,(UIApplication.shared.windows.last?.safeAreaInsets.top)!)
        .background(Color.init(hex:"#2c97f3"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDisplayName("Iphone 11")
                .previewDevice("iPhone 11")
            ContentView()
                .previewDisplayName("Iphone SE")
                .previewDevice("iPhone SE (2nd generation)")
            
        }
    }
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
