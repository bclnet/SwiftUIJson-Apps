import SwiftUI
import SwiftUIJson

struct Z01a_Picker: View {
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
    @State private var selection = 0
    var body: some View {
        VStack {
            Text("Picker")
            VStack {
                Picker(selection: $selection, label: Text("label")) { Text("content") }
                Picker("titleKey", selection: $selection) { Text("content") }
                Picker(String("title"), selection: $selection) { Text("content") }
            }
            VStack {
                Picker("titleKey", selection: $selection, content: { Text("content") })
            }.pickerStyle(DefaultPickerStyle())
//            VStack {
//                Picker(selection: $selection, label: Text("label")) {
//                    ForEach(0 ..< frameworks.count) {
//                        Text(frameworks[$0])
//                    }
//                }
//                Text("framework: \(frameworks[selection])")
//            }
        }
    }
}

struct Z01a_Picker_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Picker()
        }
    }
}
