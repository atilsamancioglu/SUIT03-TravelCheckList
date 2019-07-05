//
//  TravelListView.swift
//  TravelCheckList
//
//  Created by Atil Samancioglu on 5.07.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct TravelListView : View {
    var body: some View {
        
        NavigationView{
        List(travelArray){ travels in
            NavigationLink(destination: TravelDetailView(chosenTravel: travels)) {
                Text(travels.name)
            }
            
        }
    }
    }
}

#if DEBUG
struct TravelListView_Previews : PreviewProvider {
    static var previews: some View {
        TravelListView()
    }
}
#endif
