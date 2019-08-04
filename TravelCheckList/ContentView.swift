//
//  ContentView.swift
//  TravelCheckList
//
//  Created by Atil Samancioglu on 5.07.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var characterName = "Luke Skywalker"

    
    var body: some View {

        VStack{
        Text(characterName).padding().font(.largeTitle)
            
            Button(action: {
                self.characterName = "Yoda"
            }) {
                Text("Change Character")
            }
            
            TextField("placeholder", text: $characterName)
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
