import SwiftUI
import SwiftUIJson

struct B06b_LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                B03d_LandmarkRow(landmark: landmark)
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct B06b_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B06b_LandmarkList()
        }
    }
}
