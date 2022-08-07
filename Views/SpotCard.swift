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
import CoreLocation
struct SpotCard: View {
    var spot: Spot
    
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
        ScrollView {
                VStack {
                    Image(spot.imageName)
                        .resizable()
                    .frame(width: 390, height: 250, alignment: .center)
                    .padding()
                    .shadow(color: .brown, radius: 5)
                    
                    Text(spot.name)
                        .font(.custom("PlayfairDisplay-Regular", size: 20))
                    .foregroundColor(Color("Primary"))
                    .padding(.vertical, -5)
                    
                   
                    MapView(coordinate: spot.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(width: 390, height: 200)
                        .padding()
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(white:0.75))
                        .frame(height: 50.0)
                        .shadow(color: .brown, radius: 0.5)
                        .overlay(HStack{
                            Image(systemName: "phone.fill")
                                .foregroundColor(Color("Bg"))
                            Text(spot.phone)
                                .foregroundColor(Color("Bg"))
                        })
                        .padding(.bottom, -5)
                        .padding(.horizontal)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(white:0.75))
                        .frame(height: 80.0)
                        .shadow(color: .brown, radius: 0.5)
                        .overlay(HStack{
                            Image(systemName: "house.fill")
                                .foregroundColor(Color("Bg"))
                            Text(spot.address)
                            .foregroundColor(Color("Bg"))
                            .multilineTextAlignment(.center)
                        })
                        .padding()
                    
                    
                    Text(spot.description)
                        .foregroundColor(Color("Primary"))
                        .padding()
                        .multilineTextAlignment(.center)
                        .font(.custom("PlayfairDisplay-Regular", size: 20))
                    

                
                    
                }
            }
        }
    }
}

struct SpotCard_Previews: PreviewProvider {
    static var previews: some View {
        SpotCard(spot: spots[1])
    }
}
