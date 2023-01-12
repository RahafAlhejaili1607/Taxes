//
//  SegmentedControl.swift
//  Taxes calculater
//
//  Created by Rahaf Alhejaili on 16/06/1444 AH.
//

import SwiftUI

struct SegmentedControl: View {
    enum options : String , CaseIterable{
        case TaxCalculater = "Tax Calculato"
            
        case ZakatCalculater = "Zakat Calculato"}
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .init(/*@START_MENU_TOKEN@*/Color(red: 0.483, green: 0.756, blue: 0.488)/*@END_MENU_TOKEN@*/)
    }
    @State var segmentationSelection : options = .TaxCalculater

    var body: some View {
        VStack{
            VStack{
                Picker("", selection: $segmentationSelection) {
                            ForEach(options.allCases, id: \.self) { option in
                                Text(option.rawValue)
                            }
                }.pickerStyle(SegmentedPickerStyle())
                    .frame(width: 389.0, height: 90)
                
                            .padding()
                            
                           
            }
          
        }    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
