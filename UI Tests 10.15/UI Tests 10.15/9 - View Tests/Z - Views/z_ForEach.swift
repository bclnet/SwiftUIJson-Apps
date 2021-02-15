import SwiftUI
import SwiftUIJson

fileprivate struct Item: Identifiable {
    let id: Int
}
extension Item: FullyCodable, CodableKeyPath {
    static func decodeKeyPath(_ keyPath: String) -> AnyKeyPath {
        switch keyPath {
        case "id": return \Item.id
        default: fatalError()
        }
    }
    static func encodeKeyPath(_ keyPath: AnyKeyPath) -> String {
        switch keyPath {
        case \Item.id: return "id"
        default: fatalError()
        }
    }
    enum CodingKeys: CodingKey {
        case id
    }
    public init(from decoder: Decoder, for dynaType: DynaType) throws { try self.init(from: decoder) }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
    }
}

struct z_ForEach: View {
    init() {
        DataManager.register(Item.self, Item(id: 0))
//        let _ = DataManager.data(add: items, forKey: "key")
    }
    fileprivate let items = [Item(id: 0), Item(id: 1)]
    let ints = 0..<5
    var body: some View {
        VStack {
            Text("ForEach")
//            ForEach(items) { e in Text("content") }
            ForEach(items, id: \Item.id) { e in Text("content") }
//            ForEach(ints) { e in Text("content") }
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
