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

struct HomePage: View {
    @Binding var active: Bool
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
                Spacer()
                VStack(spacing:5) {
                Text("My Favorite \nFood Spots in Saigon!")
                    .font(.custom("PlayfairDisplay-Bold", size: 30))
                    .foregroundColor(Color("Primary"))
                    .padding()
                    .multilineTextAlignment(.center)
                    Text("You only lick once...\nLick the bowl!")
                    .font(.custom("PlayfairDisplay-Regular", size: 20))
                    .foregroundColor(Color("Primary"))
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .opacity(0.8)
            }
                Spacer()
                ZStack{
                    OverlayView()
                    Image("homepage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, alignment: .center)
                        .shadow(color: .black, radius: 0.5)
                }
                Spacer()
                
                Button(action : {
                    active = false
                }, label: {
                    Text("Let's Dive In")
                        .bold()
                        .frame(width: 280, height: 60)
                        .foregroundColor(Color("Primary"))
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Bg"), Color(.white)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                        .padding(2)
                        
                        
                })
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(active: .constant(true))
    }
}
}
