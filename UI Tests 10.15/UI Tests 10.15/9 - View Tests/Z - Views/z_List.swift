import SwiftUI
import SwiftUIJson

fileprivate struct Item: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let children: [Item]?
}

struct z_List: View {
    @State private var items = [Item]()
    @State private var selectedItems: Set<Item> = Set<Item>()
    @State private var selectedItem: Item?
    @State private var ints = 0..<10
    @State private var selectedInts: Set<Int> = Set<Int>()
    @State private var selectedInt: Int?
    var body: some View {
        VStack {
            Text("List")
            VStack {
                // MARK: - List:8840
                #if !os(watchOS)
                List(selection: $selectedItems) { Text("content") }
                List(selection: $selectedItem) { Text("content") }
                #endif
                // MARK: - List:8877
                #if !os(watchOS)
                List(items, selection: $selectedItems) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #endif
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, children: \Item.children, selection: $selectedItems) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                #if !os(watchOS)
                List(items, id: \Item.id, selection: $selectedItems) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #endif
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, id: \Item.id, children: \Item.children, selection: $selectedItems) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                #if !os(watchOS)
                List(ints, selection: $selectedInts) { elem in
                    ForEach(ints) {
                        Text(String($0))
                    }
                }
                #endif
            }
            VStack {
                // MARK: - List:8877
                #if !os(watchOS)
                List(items, selection: $selectedItem) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #endif
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, children: \Item.children, selection: $selectedItem) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                #if !os(watchOS)
                List(items, id: \Item.id, selection: $selectedItem) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #endif
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, id: \Item.id, children: \Item.children, selection: $selectedItem) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                #if !os(watchOS)
                List(ints, selection: $selectedInt) { elem in
                    ForEach(ints) {
                        Text(String($0))
                    }
                }
                #endif
            }
            VStack {
                // MARK: - List:9035
                List {
                    Text("content")
                }
                List(items) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, children: \Item.children) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                List(items, id: \Item.id) { elem in
                    ForEach(items) {
                        Text($0.title)
                    }
                }
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    List(items, id: \Item.id, children: \Item.children) { elem in
                        OutlineGroup(items, children: \.children) {
                            Text($0.title)
                        }
                    }
                }
                #endif
                List(ints) { elem in
                    ForEach(ints) {
                        Text(String($0))
                    }
                }
            }
        }
    }
}

struct z_List_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_List()
        }
    }
}
