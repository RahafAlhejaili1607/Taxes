//
//  Segmentedcontroll.swift
//  Taxes calculater
//
//  Created by Rahaf Alhejaili on 16/06/1444 AH.
//

import SwiftUI

struct Segmentedcontroll: View {
   
    init(){
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().selectedSegmentTintColor = .init(/*@START_MENU_TOKEN@*/Color(red: 0.483, green: 0.756, blue: 0.488)/*@END_MENU_TOKEN@*/)
        UISegmentedControl.appearance().setTitleTextAttributes(
                   [
                       .font: UIFont.systemFont(ofSize: 15),
                   ], for: .normal)
            }
   
    @State var selected = 1
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("Picker"), content: {
                Text("text1").tag(1)
                
                Text("text2").tag(2)
            })
           
            .frame(width: 370.0, height: 84.0)
            .pickerStyle(SegmentedPickerStyle())
            
        
            
            
            if selected == 1 {
                
                TaxCalcoulater()


            } else {
                ContentView()
            }
        }
        
    }
}

struct Segmentedcontroll_Previews: PreviewProvider {
    static var previews: some View {
        Segmentedcontroll()
    }
}
