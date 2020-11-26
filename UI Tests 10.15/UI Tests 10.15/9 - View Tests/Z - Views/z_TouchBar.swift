import SwiftUI
import SwiftUIJson

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_TouchBar: View {
    var body: some View {
        VStack {
            Text("TouchBar")
            Text("_:").touchBar(TouchBar { Text("content")  })
            Text("id:content:").touchBar(TouchBar(id: "id") { Text("content") })
        }
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_TouchBar_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TouchBar()
        }
    }
}
