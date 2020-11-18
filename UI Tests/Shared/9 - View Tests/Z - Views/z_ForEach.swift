import SwiftUI
import SwiftUIJson

struct Item: Identifiable {
    let id: Int
}

struct z_ForEach: View {
    let data = [Item(id: 0), Item(id: 1)]
    let ints = 1..<5
    var body: some View {
        VStack {
            Text("ForEach")
//            ForEach(data) { e in Text("content") }
//            ForEach(data, id: \Item.id) { e in Text("content") }
            ForEach(ints) { e in Text("content") }
        }
    }
}

struct z_ForEach_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ForEach()
        }
    }
}
