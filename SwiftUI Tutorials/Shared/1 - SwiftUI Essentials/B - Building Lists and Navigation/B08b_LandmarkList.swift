import SwiftUI
import SwiftUIJson

struct B08b_LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: B07e_LandmarkDetail(landmark: landmark)) {
                    B03d_LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct B08b_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            JsonPreview {
                B08b_LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
            }
        }
    }
}
