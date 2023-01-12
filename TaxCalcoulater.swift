//
//  TaxCalcoulater.swift
//  Taxes calculater
//
//  Created by Rahaf Alhejaili on 16/06/1444 AH.
//

import SwiftUI

struct TaxCalcoulater: View {
    @State private var Pricewithtax:Double = 0.0
    @State private var Taxrate: Double  = 0.0
    @State private var percentage = 100
    @State var IsitClicked = false
    @State private var TaxValue = 0.0
    @State private var ThePriceiswithouttax = 0.0
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    
                    
                    Text("text3")
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
                        .font(Font.custom("SF Compact", size: 20))
                    Spacer()
                    TextField("0", value: $Pricewithtax, format: .number)
                        .onTapGesture {
                            Pricewithtax = 0
                        }
                      .frame(width: 210)
                      .keyboardType(.numberPad)
                      .foregroundColor(.gray)
                      .font(.headline)
                      .cornerRadius(10)
                      .keyboardType(.decimalPad)
                      .textFieldStyle(RoundedBorderTextFieldStyle())
                      
                }
                HStack(alignment: .lastTextBaseline) {
                    Text("text4")
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
                        .font(Font.custom("SF Compact", size: 20))
                    Spacer()
                    TextField("", value: $Taxrate, format: .number)
                        .onTapGesture {
                            Taxrate = 0
                        }
                        .frame(width: 210)
                        .keyboardType(.numberPad)
                        .foregroundColor(.gray)
                        .font(.headline)
                        .cornerRadius(10)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Spacer()
            }.padding()
            VStack(alignment: .center) {
                
                Button {
                    IsitClicked = true
                    TaxValue = ( Pricewithtax * Taxrate ) / 100
                    ThePriceiswithouttax = (Pricewithtax + TaxValue)
                    //Pricewithtax = 0
                    //Taxrate = 0
                } label: {
                    Text("text5")
                        .frame(width: 257, height: 44, alignment: .center)
                            .background(/*@START_MENU_TOKEN@*/Color(red: 0.483, green: 0.756, blue: 0.488)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                         
                            .font(Font.custom("SF Compact", size: 25))                }
                Spacer()
                
                Text(IsitClicked ? "text6": "")
                    .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
              
                Text(IsitClicked ? "\(TaxValue, specifier: "%.0f")": "")
                    .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
                Spacer()
                Text(IsitClicked ?"text7": "")
                    .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
          
                
                Text(IsitClicked ? "\(ThePriceiswithouttax, specifier: "%.0f")": "")
                    .foregroundColor(Color(red: 0.37, green: 0.514, blue: 0.363))
                Spacer()
            }
           
        }
    }
}


struct TaxCalcoulater_Previews: PreviewProvider {
    static var previews: some View {
        TaxCalcoulater()
    }
}
