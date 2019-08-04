//
//  FirstScreen.swift
//  TravelCheckList
//
//  Created by Atil Samancioglu on 4.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct FirstScreen: View {
    
    @State var shown = false
    @State var number = 3
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.number -= 1
                }) {
                    Text("-")
                }
                
            Text(String(number))
                .font(.largeTitle)
                
                Button(action: {
                                   self.number += 1
                               }) {
                                   Text("+")
                               }
            }
            
            Button(action: {
                //code
                if self.number > 5 {
                    self.shown.toggle()
                }
            }) {
                Text("Go to 2nd")
            }.sheet(isPresented: $shown) { () -> SecondScreen in
                return SecondScreen()
            }
        }
    }
}

#if DEBUG
struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
#endif
