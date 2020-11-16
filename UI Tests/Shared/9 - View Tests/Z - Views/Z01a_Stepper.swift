import SwiftUI
import SwiftUIJson

struct Z01a_Stepper: View {
    @State private var int: Int = 1
    @State private var int8: Int8 = 1
    @State private var float: Float = 1
    var body: some View {
        VStack {
            Text("Stepper")
            VStack {
                Text("Int")
                Stepper(onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in }) { Text("label") }
                Stepper(value: $int, step: 1, onEditingChanged: { _ in }) { Text("label") }.hint(self, step: 1)
                Stepper(value: $int, in: 0...100, step: 1, onEditingChanged: { _ in }) { Text("label") }.hint(self, step: 1)
                Stepper("titleKey", onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in })
                Stepper("titleKey", value: $int, step: 1, onEditingChanged: { _ in }).hint(self, step: 1)
                Stepper("titleKey", value: $int, in: 0...100, step: 1, onEditingChanged: { _ in })
                Stepper(String("title"), onIncrement: { print("onIncrement") }, onDecrement: { print("onDecrement") }, onEditingChanged: { _ in })
                Stepper(String("title"), value: $int, step: 1, onEditingChanged: { _ in })
                Stepper(String("title"), value: $int, in: 0...100, step: 1, onEditingChanged: { _ in })
            }
            VStack {
                Text("Int8")
                Stepper("titleKey", value: $int8, step: 1, onEditingChanged: { _ in })
            }
            VStack {
                Text("Float")
                Stepper("titleKey", value: $float, step: 1, onEditingChanged: { _ in })
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
