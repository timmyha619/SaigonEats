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

struct OpeningView: View {
    @State var isOpeningActive: Bool = true
    var body: some View {

ZStack {
    if isOpeningActive {
        HomePage(active: $isOpeningActive)
    } else {
        SpotList()
    }
}
}
}

struct OpeningView_Previews: PreviewProvider {
static var previews: some View {
OpeningView()
}
}
