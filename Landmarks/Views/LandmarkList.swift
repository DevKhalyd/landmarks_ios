//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Rolando Garcia on 04/02/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Identifiable protocol
        NavigationView {
            List (landmarks){ landmark in
               
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            
        }
    }
}

// Previews for multiple devices
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        // \key: self. as key to the path identifier
        
        // From my perspective use just one emulator, because can get slowly because of the low requirements of this computer.
        // Also work with the default preview. Then change
       /* ForEach(["iPhone SE (2nd generation)","iPhone 13 Pro"],id:\.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                }*/
        
        // To see the avaibles devices
        // Product > Destination > Choose the device and past in the name
        // Change the default preview: At the centerTop: NameProject > Phone 11 (Press on it and the select a new device)
        LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
      
    }
}
