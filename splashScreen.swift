//
//  splashScreen.swift
//  Taxes calculater
//
//  Created by Rahaf Alhejaili on 18/06/1444 AH.
//

import SwiftUI

struct splashScreen: View {
    @State var isActive:Bool = false
    var body: some View {
        ZStack {
            
            // 2.
            if self.isActive {
                // 3.
                Segmentedcontroll()
            } else {
                // 4.
                
                Image ("IMG 1")
                    .resizable()
                    .ignoresSafeArea()
                Image("IMG 2")
                    .resizable()
                    .frame(width: 428 , height : 428)
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }}

struct splashScreen_Previews: PreviewProvider {
    static var previews: some View {
        splashScreen()
    }
}
