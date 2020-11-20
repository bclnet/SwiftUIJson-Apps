import SwiftUI
import SwiftUIJson
import MapKit

struct B07b_MapView: UIViewRepresentable {
    var base = BaseView(Self.self)
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct B07b_MapView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B07b_MapView(coordinate: landmarkData[0].locationCoordinate)
        }
    }
}

extension B07b_MapView: JsonView {
    public init(from decoder: Decoder, for dynaType: DynaType) throws {
        self.init(coordinate: CLLocationCoordinate2D())
    }
    public func encode(to encoder: Encoder) throws {}
}
