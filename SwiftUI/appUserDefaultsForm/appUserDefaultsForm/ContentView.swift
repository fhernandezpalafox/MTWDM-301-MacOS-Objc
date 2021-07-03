//
//  ContentView.swift
//  appUserDefaultsForm
//
//  Created by Felipe Hernandez on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    
    //TODO: Elementos del arreglo
    let  elementosProfesion = ["Ninguno","Técnico Superior Universitario","Ingeniería", "Maestría", "Doctorado"]
    
    
    @State private var colorSelection: Color = Color.init(UserDefaults.standard.color(forKey: "color") ?? .black)
    
    @State private var pickerSelection: String = UserDefaults.standard.string(forKey: "profesion") ?? "Ninguno"
    
    @State private var textFieldSelection : String =  UserDefaults.standard.string(forKey: "nombre") ?? ""
    
    @State private var sliderSelection: Double = UserDefaults.standard.double(forKey: "edad")
    
    @State private var toogleSelection: Bool = UserDefaults.standard.bool(forKey: "estudias")
    
    @State private var datePickerSelection: Date = UserDefaults.standard.date(forKey: "fecha") ??  Date()
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header:Text("información")) {
                    
                    Text("Datos usuario")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(colorSelection)
                   
                    TextField("Nombre completo",text: $textFieldSelection)
                    
                    Picker("Seleccione grado academico", selection: $pickerSelection) {
                        ForEach(elementosProfesion, id: \.self){
                            Text($0)
                        }
                    }.navigationBarTitleDisplayMode(.inline)
                    
                    HStack{
                        Text("Edad")
                        Slider(value: $sliderSelection, in:0...100)
                        Spacer()
                        Text("\(Int(sliderSelection))")
                    }
                    
                }
                
                
                Section(header: Text("Otros datos")) {
                    Toggle("¿Estudias?", isOn:$toogleSelection)
                    ColorPicker("Color favorito", selection: $colorSelection)
                    DatePicker("Fecha nacimiento", selection: $datePickerSelection, displayedComponents:[.date, .hourAndMinute])
                }
                
                HStack{
                    Spacer()
                    HStack(spacing:10){
                        Button(action: {
                            
                            UserDefaults.standard.set(textFieldSelection,forKey:"nombre")
                            UserDefaults.standard.set(sliderSelection,forKey:"edad")
                            UserDefaults.standard.set(toogleSelection,forKey:"estudias")
                            UserDefaults.standard.set(pickerSelection,forKey:"profesion")
                            UserDefaults.standard.set(datePickerSelection,forKey:"fecha")
                            
                            let co =  UIColor.init(colorSelection)
                            UserDefaults.standard.setColor(co, forKey: "color")
                            
                            
                        }) {
                            Text("Guardar")
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 100, height: 40)
                    .background(Color.init(hex:"#2c97f3"))
                    .cornerRadius(5)
                    Spacer()
                    
                }
                
                
                Section(footer: Text("Datos de la versión de la aplicacion")) {
                    
                    HStack{
                        Text("Versión")
                        Spacer()
                        Text("1.0.0")
                    }
                }
                
            }
            
            .navigationBarTitle(Text("UserDefaults - Form"), displayMode: .large)
        }
        .navigationBarColor(backgroundColor: hexStringToUIColor(hex: "#2c97f3"), tintColor: .white)
        
    }
}

//MARK: Crear la extension para cualquier Vista
extension View {
    func navigationBarColor(backgroundColor: UIColor, tintColor: UIColor) -> some View {
         
        self.modifier(NavigationBarColor(backgroundColor: backgroundColor, tintColor: tintColor))
    }
}

//TODO: Crear un ViewModifier
struct NavigationBarColor : ViewModifier {
    
    init(backgroundColor: UIColor, tintColor: UIColor) {
        
        let coloredAppearence =  UINavigationBarAppearance()
        coloredAppearence.configureWithOpaqueBackground()
        coloredAppearence.backgroundColor = backgroundColor
        coloredAppearence.titleTextAttributes = [ .foregroundColor: tintColor]
        coloredAppearence.largeTitleTextAttributes = [.foregroundColor: tintColor]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearence
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearence
        UINavigationBar.appearance().compactAppearance = coloredAppearence
        UINavigationBar.appearance().tintColor =  tintColor
    }
    
    func body(content: Content) -> some View {
        content
    }
    
}


//TODO: Funcion que te convierte a hexadecimal los colores
func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
