import SwiftUI
import SwiftUIJson

struct z_TupleView: View {
    var body: some View {
        VStack {
            Text("TupleView")
            HStack {
                Text("single")
            }
            HStack {
                Text("one")
                Text("two")
            }
        }
    }
}

struct z_TupleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TupleView()
        }
    }
}
