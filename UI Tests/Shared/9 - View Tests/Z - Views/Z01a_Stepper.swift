import SwiftUI
import SwiftUIJson

struct Z01a_Stepper: View {
    @State private var value = 1
    var body: some View {
        VStack {
            Text("Stepper")
            VStack {
                Stepper(onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in }) { Text("label") }
                Stepper(value: $value, step: 1, onEditingChanged: { _ in }) { Text("label") }
                Stepper(value: $value, in: 0...100, step: 1, onEditingChanged: { _ in }) { Text("label") }
                Stepper("titleKey", onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in })
                Stepper(String("title"), onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in })
                Stepper("titleKey", value: $value, step: 1, onEditingChanged: { _ in })
                Stepper(String("title"), value: $value, step: 1, onEditingChanged: { _ in })
                Stepper("titleKey", value: $value, in: 0...100, step: 1, onEditingChanged: { _ in })
                Stepper(String("title"), value: $value, in: 0...100, step: 1, onEditingChanged: { _ in })
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
