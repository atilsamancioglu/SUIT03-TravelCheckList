//
//  TravelDetailView.swift
//  TravelCheckList
//
//  Created by Atil Samancioglu on 5.07.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct TravelDetailView : View {
    
    var chosenTravel : TravelCheckModel
    @State var seen = false
    
    var body: some View {
        VStack{
        Text(chosenTravel.name)
            .font(.largeTitle)
            .padding()
            .foregroundColor(self.seen ? .blue : .black)
        Text(chosenTravel.description)
            .font(.largeTitle)
            .padding()
            
           SeenButton(seenOrNot: $seen)
            
        }
    }
}

#if DEBUG
struct TravelDetailView_Previews : PreviewProvider {
    static var previews: some View {
        TravelDetailView(chosenTravel: travelCheck1)
    }
}
#endif
