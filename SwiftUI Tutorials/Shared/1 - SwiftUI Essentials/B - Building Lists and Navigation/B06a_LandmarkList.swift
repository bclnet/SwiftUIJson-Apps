import SwiftUI
import SwiftUIJson

struct B06a_LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                B03d_LandmarkRow(landmark: landmark)
            }
        }
    }
}

struct B06a_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B06a_LandmarkList()
        }
    }
}
