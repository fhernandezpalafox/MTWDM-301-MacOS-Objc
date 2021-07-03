//
//  ContentView.swift
//  appImage
//
//  Created by Felipe Hernandez on 24/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount:  CGFloat = 0
    @State private var contador : CGFloat = 50;
    @State private var image : UIImage? = nil
    
    fileprivate func ImagenInternet() -> some View {
        return Group {
            
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }else {
                Text("Cargando...")
            }
        }.onAppear {
            getImage(purl:"https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png")
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                ScrollView{
                    Image("photo")
                        .clipShape(Circle())
                        .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                        .overlay(Circle()
                                    .stroke(Color.blue, lineWidth: 2) )
                        .scaleEffect(animationAmount)
                        .animation(
                            Animation.easeInOut(duration: 1).repeatCount(4)
                        ).onAppear(){
                            self.animationAmount += 1
                        }
                    
                    Image("photo")
                        .resizable()
                        .scaledToFit()
                        //.scaledToFill()
                        .frame(width: 100, height: 100)
                    
                    
                    Image("photo")
                        .resizable()
                        .overlay(
                            HStack{
                                Text("Felipe Hernandez")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                                    .padding()
                                    .frame(width: geometry.size.width/2)
                                
                            }
                            .background(Color.blue)
                            .opacity(0.8)
                            ,
                            alignment: .bottom
                            
                        )
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 4)
                    
                    Image("photo")
                        .resizable()
                        .scaledToFill()
                    
                    Image(systemName: "person.circle")
                        .font(.system(size: contador))
                        .onTapGesture {
                            contador += 5
                            print("Se le ha dado clic a la imagen")
                        }
                        .padding()
                    
                    Image("photo")
                        .resizable()
                        .scaledToFill()
                        .mask(
                            Text("Felipe")
                                .font(.system(size:75,weight:.bold))
                        )
                    
                    ImagenInternet()
                    
                    
                }
            }
        }
    }
    
    
    // _ url: String
func getImage(purl: String) {
    guard let _url = URL(string: purl) else {
      return
    }
    URLSession.shared.dataTask(with: _url) { (data,_,_) in
      if let data =  data, let  image = UIImage(data: data){
          self.image =  image
      }
    }.resume()

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
