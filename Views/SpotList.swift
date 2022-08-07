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

struct SpotList: View {
    var body: some View {
       
        ZStack{
            Color("Bg")
    
    NavigationView{
    
    List(spots) { spot in
        
        
        NavigationLink{
            SpotCard(spot: spot)
            
        }
        
    label: {
            SpotRow(spot: spot)
        }
    
    .frame(width: 2000, alignment: .center)
    .padding(.horizontal, 40)
    .navigationBarTitle("The Holy Grails", displayMode: .inline)
    .navigationBarHidden(true)

        
    }
    } .background(Color("Bg"))
}
    }
}

struct SpotList_Previews: PreviewProvider {
static var previews: some View {
    SpotList()
}
}


