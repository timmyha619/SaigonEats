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

struct OverlayView: View {
    private let gradient = LinearGradient(gradient: Gradient(colors: [Color("Primary"), Color(.white)]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
        ZStack {
          Circle()
                .stroke(gradient, style: StrokeStyle(lineWidth: 30 ))
                .frame(width: 240, height: 240, alignment: .center)
        }
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
            .preferredColorScheme(.dark)
    }
}
