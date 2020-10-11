import SwiftUI
import SwiftUIJson

struct SampleView: View {
    var body: some View {
        VStack {
            Text("largeTitle".var(self))
        }
        //.padding()
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
