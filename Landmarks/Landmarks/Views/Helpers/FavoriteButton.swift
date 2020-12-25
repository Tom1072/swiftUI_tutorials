//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by  Tom 107 on 2020-12-25.
//

import SwiftUI

struct FavoriteButton: View {
    // @Binding lets us create a property that says "This value will be provided from elsewhere, it will be shared between us and that other place"
    // In this case, changes made inside this view propagate back to the data source
    
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
