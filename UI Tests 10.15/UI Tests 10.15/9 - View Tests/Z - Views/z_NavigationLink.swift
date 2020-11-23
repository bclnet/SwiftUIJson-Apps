import SwiftUI
import SwiftUIJson

struct z_NavigationLink: View {
    @State private var isActive = true
    @State private var value: Int? = 1
    var body: some View {
        VStack {
            Text("NavigationLink")
            VStack {
                NavigationLink(destination: Text("destination")) { Text("label") }
                NavigationLink(destination: Text("destination"), isActive: $isActive) { Text("label") }
                NavigationLink(destination: Text("destination"), tag: 1, selection: $value) { Text("label") }
            }
            VStack {
                NavigationLink("titleKey", destination: Text("destination"))
                NavigationLink(String("title"), destination: Text("destination"))
                NavigationLink("titleKey", destination: Text("destination"), isActive: $isActive)
                NavigationLink(String("title"), destination: Text("destination"), isActive: $isActive)
                NavigationLink("titleKey", destination: Text("destination"), tag: 1, selection: $value)
                NavigationLink(String("title"), destination: Text("destination"), tag: 1, selection: $value)
            }
            #if os(iOS)
            VStack {
                NavigationLink("titleKey", destination: Text("destination")).isDetailLink(false)
            }
            #endif
        }
    }
}

struct z_NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_NavigationLink()
        }
    }
}
