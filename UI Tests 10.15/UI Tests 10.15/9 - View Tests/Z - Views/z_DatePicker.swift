import SwiftUI
import SwiftUIJson

struct z_DatePicker: View {
    @State private var date = Date()
    private let from = Date()
    private let till = Date(timeIntervalSinceNow: 1000)
    var body: some View {
        VStack {
            Text("DatePicker")
            VStack {
                DatePicker(selection: $date, displayedComponents: [.hourAndMinute, .date]) { Text("label") }
                DatePicker(selection: $date, in: from...till, displayedComponents: [.hourAndMinute, .date]) { Text("label") }
                DatePicker(selection: $date, in: ...till, displayedComponents: [.hourAndMinute, .date]) { Text("label") }
                DatePicker(selection: $date, in: from..., displayedComponents: [.hourAndMinute, .date]) { Text("label") }
            }
            VStack {
                DatePicker("titleKey", selection: $date, displayedComponents: [.hourAndMinute, .date])
                DatePicker("titleKey", selection: $date, in: from...till, displayedComponents: [.hourAndMinute, .date])
                DatePicker("titleKey", selection: $date, in: ...till, displayedComponents: [.hourAndMinute, .date])
                DatePicker("titleKey", selection: $date, in: from..., displayedComponents: [.hourAndMinute, .date])
            }
            VStack {
                DatePicker(String("title"), selection: $date, displayedComponents: [.hourAndMinute, .date])
                DatePicker(String("title"), selection: $date, in: from...till, displayedComponents: [.hourAndMinute, .date])
                DatePicker(String("title"), selection: $date, in: ...till, displayedComponents: [.hourAndMinute, .date])
                DatePicker(String("title"), selection: $date, in: from..., displayedComponents: [.hourAndMinute, .date])
            }
            VStack {
                DatePicker("titleKey", selection: $date, displayedComponents: [.hourAndMinute, .date])
            }.datePickerStyle(DefaultDatePickerStyle())
        }
    }
}

struct z_DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_DatePicker()
        }
    }
}
