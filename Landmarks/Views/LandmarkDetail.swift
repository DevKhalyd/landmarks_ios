//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Rolando Garcia on 05/02/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                // When u specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the avaible space
                .frame(height:210)
                .ignoresSafeArea(edges:.top)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-140)
            VStack(alignment: .leading) {
                Text(landmark.name)
                // Applies the system font to the text so that
                // it responds correctly to the user´s prefereed
                // font sizes and settings
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                // When u apply a modifier to a layout view
                // like a stack, SwiftUI applies the modifier
                // to all elements contained in the group.
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationBarTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
