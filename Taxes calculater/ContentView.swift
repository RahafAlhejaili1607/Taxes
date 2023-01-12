//
//  ContentView.swift
//  Taxes calculater
//
//  Created by Rahaf Alhejaili on 14/06/1444 AH.
//

import SwiftUI



struct ContentView: View {
  
    
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .init(/*@START_MENU_TOKEN@*/Color(red: 0.483, green: 0.756, blue: 0.488)/*@END_MENU_TOKEN@*/)
    }
   

        ///*@START_MENU_TOKEN@*/Color(red: 0.367, green: 0.506, blue: 0.359)/*@END_MENU_TOKEN@*/
      
    @State var MoneyValue  = 0.0
    @State var MoneyValueom  = 0.0
    @State var IsitClicked = false
   

   
     
    
    var body: some View {
        
        VStack {
         
                       
            Spacer()
            
               
                
               
           
         
            HStack{
                Text("text8")
                    .fontWeight(.regular)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.367, green: 0.506, blue: 0.359)/*@END_MENU_TOKEN@*/)
                    .font(Font.custom("SF Compact", size: 20))
                Spacer()
                TextField("0", value: $MoneyValueom, format: .number)
                    
                  //  TextField("text10", text: $MoneyValueom)
                   
                    .frame(width: 210)
                    .keyboardType(.numberPad)
                    .foregroundColor(.gray)
                    .font(.headline)
                    .cornerRadius(10)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                   
                    
                    
            
                
            }.padding()
            
           Spacer()
            Button("text5") {
                IsitClicked = true
                MoneyValue = (MoneyValueom * 2.5)/100
                
              /*  UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                if let val = Double(self.MoneyValueom) {
                    MoneyValue = (val * 2.5)/100
                  
                 }   */
                   
                    
                    
                    
                    
                }
            
            .frame(width: 257, height: 44, alignment: .center)
                .background(/*@START_MENU_TOKEN@*/Color(red: 0.483, green: 0.756, blue: 0.488)/*@END_MENU_TOKEN@*/)
                .cornerRadius(8)
                .foregroundColor(.white)
                .fontWeight(.medium)
             
                .font(Font.custom("SF Compact", size: 25))
           
            Spacer()
            //Text("Total Zakat: \(MoneyValue)")
            Text(IsitClicked ? "text9" :"")
                .fontWeight(.regular)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.367, green: 0.506, blue: 0.359)/*@END_MENU_TOKEN@*/)
                .font(Font.custom("SF Compact", size: 20))
           
            Text(IsitClicked ? "  \(MoneyValue, specifier: "%.0f")"  : "")
            
                .fontWeight(.regular)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.367, green: 0.506, blue: 0.359)/*@END_MENU_TOKEN@*/)
                .font(Font.custom("SF Compact", size: 20))
            Spacer()
        }
       
      
        
    }
   
  /*  struct ChosenType: View{
            var selectedType:Side
            var body: some View{
                switch selectedType {
                case .TaxCalculater:
                    
                case .ZakatCalculater:
                    <#code#>
                }
            }
            
            
        }
        struct TaxType{}
    }*/
    
}
/*struct calculater {
    func calculatingZakat(Zakat: Double)-> Double{
   return Zakat
    }
}*/
struct CustomColor{
    static let Maincolor =
    Color("MainColor")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

