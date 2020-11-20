import SwiftUI
import SwiftUIJson

struct B05e_LandmarkList: View {
    var body: some View {
        List(landmarkData) { landmark in
            B03d_LandmarkRow(landmark: landmark)
        }
    }
}

struct B05e_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B05e_LandmarkList()
        }
    }
}
