//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Rolando Garcia on 07/02/22.
//

import SwiftUI

struct FavoriteButton: View {
    // Using a Binding make changes made inside this view propagate back to the data source...
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            // The title label doesnt appear in the UI when use the iconOnly label style, but VoiceOver uses it to improve accessibility
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
