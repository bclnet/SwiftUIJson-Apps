import SwiftUI
import SwiftUIJson

struct Z01a__OffsetEffect: View {
    var body: some View {
        VStack {
            Text("OffsetEffect")
            Text("offset(_:)").offset(CGSize(width: 20, height: 25))
            Text("offset(x:y:)").offset(x: 20, y: 50)
        }
    }
}

struct Z01a__OffsetEffect_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a__OffsetEffect()
        }
    }
}
