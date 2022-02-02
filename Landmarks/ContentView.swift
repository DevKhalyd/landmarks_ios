//
//  ContentView.swift
//  Landmarks
//
//  Created by Rolando Garcia on 30/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                // When u specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the avaible space
                .frame(height:210)
                .ignoresSafeArea(edges:.top)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-140)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                // Applies the system font to the text so that
                // it responds correctly to the user´s prefereed
                // font sizes and settings
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                // When u apply a modifier to a layout view
                // like a stack, SwiftUI applies the modifier
                // to all elements contained in the group.
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}


// Define the preview for that ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
