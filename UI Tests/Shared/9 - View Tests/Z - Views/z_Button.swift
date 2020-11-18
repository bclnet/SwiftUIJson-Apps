import SwiftUI
import SwiftUIJson

//struct RedBorderedButtonStyle : PrimitiveButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        Button(configuration).border(Color.red)
//    }
//}

struct z_Button: View {
    var body: some View {
        VStack {
            Text("Button")
            VStack {
                Button(action: { print("action") }, label: { Text("label") })
                Button("titleKey", action: { print("action") })
                Button(String("title"), action: { print("action") })
            }
            VStack {
                Button("configuration", action: { print("action") })
            }.buttonStyle(DefaultButtonStyle())
        }
    }
}

struct z_Button_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Button()
        }
    }
}
