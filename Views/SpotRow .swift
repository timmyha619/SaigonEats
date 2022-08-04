/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Ha Minh Duc
  ID: 3878911
  Created  date: 20/07/2022
  Last modified: 06/08/2022
  Acknowledgement:
 -https://www.behance.net/gallery/63351389/Street-Vendors-The-Sidewalk-Cuisine-of-Vietnam
*/

import SwiftUI

struct SpotRow: View {
    var spot: Spot
    
    var body: some View {
        
            VStack(spacing: 20) {
            spot.image
                .resizable()
                .frame(width: 210, height: 200)
                .cornerRadius(20.0)
                .padding()
             
            
            Text(spot.name)
                .font(.title3)
                .fontWeight(.bold)
                .offset(y:-25)
                .foregroundColor(Color("Primary"))
        
                .frame(width: 210)
        
               
        }
            .cornerRadius(20)
            
    }
}

struct SpotRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        SpotRow(spot: spots[0])
            SpotRow(spot: spots[1])
            SpotRow(spot: spots[2])
        } .previewLayout(.sizeThatFits)
}
}

