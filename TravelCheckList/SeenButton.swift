//
//  SeenButton.swift
//  TravelCheckList
//
//  Created by Atil Samancioglu on 5.07.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import SwiftUI

struct SeenButton : View {
    
    @Binding var seenOrNot: Bool

    var body: some View {
        
        Button(action: {
            self.seenOrNot.toggle()
        }) {
            Text("Seen / Not Seen")
        }
    }
}

#if DEBUG
struct SeenButton_Previews : PreviewProvider {
    static var previews: some View {
        Text("test")
    }
}
#endif
