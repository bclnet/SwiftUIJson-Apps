import SwiftUI
import SwiftUIJson

struct z_Picker: View {
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]
    @State private var selection = 0
    var body: some View {
        VStack {
            Text("Picker")
            Group {
                Picker(selection: $selection, label: Text("label")) { Text("content") }
                Picker("titleKey", selection: $selection) { Text("content") }
                Picker(String("title"), selection: $selection) { Text("content") }
            }
            Group {
                Picker("titleKey", selection: $selection, content: { Text("content") }).pickerStyle(DefaultPickerStyle())
            }
//            Group {
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

struct z_Picker_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Picker()
        }
    }
}
