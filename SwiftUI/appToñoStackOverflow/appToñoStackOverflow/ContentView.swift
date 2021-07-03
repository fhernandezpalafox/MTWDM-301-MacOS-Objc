//
//  ContentView.swift
//  appToñoStackoverflow
//
//  Created by Felipe Hernandez on 21/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var orderList : [Order] = [
        
        Order(id: 0, productList: [Product(id: 0, name: "itemA", quantity: "24", isEvaluated: true), Product(id: 0, name: "itemB", quantity: "2", isEvaluated: false)]),
        
        Order(id: 1, productList: [Product(id: 0, name: "itemC", quantity: "4", isEvaluated: true), Product(id: 0, name: "itemD", quantity: "12", isEvaluated: false),Product(id: 0, name: "itemE", quantity: "6", isEvaluated: false), Product(id: 0, name: "itemF", quantity: "5", isEvaluated: false)]),
                                   
        Order(id: 2, productList: [Product(id: 0, name: "itemG", quantity: "24", isEvaluated: true)]),
        
        
        Order(id: 3, productList: [Product(id: 0, name: "itemH", quantity: "5", isEvaluated: true), Product(id: 0, name: "itemI", quantity: "2", isEvaluated: false),Product(id: 0, name: "itemJ", quantity: "16", isEvaluated: false), Product(id: 0, name: "itemK", quantity: "4", isEvaluated: false), Product(id: 0, name: "itemL", quantity: "2", isEvaluated: false)]),
        
        Order(id: 4, productList: [Product(id: 0, name: "itemM", quantity: "8", isEvaluated: true)])
    ]
    
    
    var body: some View {
        VStack{
            ForEach(orderList, id: \.self){order in
                
                ScrollView(showsIndicators: false){
                    
                    VStack(alignment: .leading){
                        
                        Group{
                            HStack{
                                Text("#Order " + "\(order.id)").multilineTextAlignment(.center)
                                
                                Spacer()
                                
                                Text("In Progress").multilineTextAlignment(.center)
                                
                            }.padding([.bottom],5)
                        }
                        
                        Group{
                            VStack{
                                ForEach(order.productList.indices) { currentIndex in
                                    
                                    
                                ItemRow(getProduct(productList: order.productList, index: currentIndex))
                                        .padding(.bottom, 5)
                                    
                                }
                            }
                            
                        }.padding([.bottom], 10)
                        
                        HStack{
                            
                            Text("Products")
                            
                            Spacer()
                            
                            Text("$00.00")
                            
                        }
                        
                        HStack{
                            Text("Shipping Expenses")
                            
                            Spacer()
                            
                            Text("$00.00")
                            
                            
                        }
                        
                        HStack{
                            
                            Text("Total")
                            
                            Spacer()
                            
                            
                            Text("$0.00")
                            
                            
                        }
                        
                        Spacer()
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    .padding(10)
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                )
                .padding(.bottom, 10)
            }
            
         }
         .padding(16)
    }
    
    func getProduct(productList: [Product], index: Int)-> Product{
        return productList[index]
    }
}


struct ItemRow: View {
        let currentProduct: Product
    
        init(_ currentProduct: Product) {
            self.currentProduct = currentProduct
        }
    
        var body: some View {
            HStack{
                
                HStack{
                    
                    Text("• \(currentProduct.name)")
                    
                    Spacer()
                    
                }
                
                
                HStack{
                    Text("quantity \(currentProduct.quantity)")
                    
                    Spacer()
                    
                }
                
                if !currentProduct.isEvaluated{
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action:{
                            // do sth
                        }){
                            
                            Text("rate now!")
                            
                        }
                        
                    }
                }
            }
        }
    }

struct Order: Hashable {
    var id: Int
    var productList: [Product]
}


struct Product: Hashable {
    var id: Int
    var name: String
    var quantity : String
    var isEvaluated : Bool
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
