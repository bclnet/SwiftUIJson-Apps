import SwiftUI
import SwiftUIJson

struct Z01a_Stepper: View {
    var body: some View {
        VStack {
            Text("Stepper")
            VStack {
                Button(action: { print("action") }, label: { Text("label") })
                Button("titleKey", action: { print("action") })
                Button(String("title"), action: { print("action") })
                Button("configuration", action: { print("action") }).buttonStyle(DefaultButtonStyle())
            }
        }
    }
}

struct Z01a_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Stepper()
        }
    }
}
