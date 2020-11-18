import SwiftUI
import SwiftUIJson

struct z__PaddingLayout: View {
    var body: some View {
        VStack {
            Text("PaddingLayout")
            Text("padding(_:)").padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
            Text("padding(_:_:)").padding(.bottom, nil)
            Text("padding(_:_:)").padding(.bottom, 50)
            Text("padding(_:)").padding(10.0)
        }
    }
}

struct z__PaddingLayout_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z__PaddingLayout()
        }
    }
}
