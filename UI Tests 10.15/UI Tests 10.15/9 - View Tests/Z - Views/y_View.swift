import SwiftUI
import SwiftUIJson
import UniformTypeIdentifiers

// https://swiftui-lab.com/communicating-with-the-view-tree-part-1/
// https://swiftui-lab.com/communicating-with-the-view-tree-part-2/
// https://swiftui-lab.com/communicating-with-the-view-tree-part-3/
enum ViewTest {
    struct Item: Hashable, Identifiable {
        var id = "id"
    }
    
    class TestObject: NSObject, NSItemProviderWriting {
        static var writableTypeIdentifiersForItemProvider: [String] { [""] }
        
        func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress? {
            Progress(totalUnitCount: 1)
        }
    }
    
    class TestSettings: ObservableObject {
    }
    
    struct StringPreferenceKey: PreferenceKey {
        static var defaultValue: String = ""

        static func reduce(value: inout String, nextValue: () -> String) {
            value = nextValue()
        }
    }
    
    struct AnchorTest: Equatable {
        let bounds: Anchor<CGRect>?
        static func == (lhs: AnchorTest, rhs: AnchorTest) -> Bool {
            lhs.bounds.debugDescription == rhs.bounds.debugDescription
        }
    }
    
    struct AnchorPreferenceKey: PreferenceKey {
        static var defaultValue = AnchorTest(bounds: nil)
        
        static func reduce(value: inout AnchorTest, nextValue: () -> AnchorTest) {
            value = nextValue()
        }
    }
  
    struct TestDocument: FileDocument {
        static var readableContentTypes: [UTType] {[.text]}
        let url: String
        init(url: String = "") {
            self.url = url
        }
        
        init(configuration: ReadConfiguration) throws {
            url = ""
        }
        
        func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
            let file = try! FileWrapper(url: URL(fileURLWithPath: url), options: .immediate)
            return file
        }
    }
    
    class TestReferenceDocument : ReferenceFileDocument {
        static var readableContentTypes: [UTType] { [.text] }
        @Published var text: String
        init(text: String = "Hello, world!") {
            self.text = text
        }
        
        required init(configuration: ReadConfiguration) throws {
            guard let data = configuration.file.regularFileContents,
                  let string = String(data: data, encoding: .utf8)
            else {
                throw CocoaError(.fileReadCorruptFile)
            }
            text = string
        }
        
        func fileWrapper(snapshot: String, configuration: WriteConfiguration) throws -> FileWrapper {
            let data = snapshot.data(using: .utf8)!
            return FileWrapper(regularFileWithContents: data)
        }
        func snapshot(contentType: UTType) throws -> String {
            return self.text
        }
    }
    
    struct TestDropDelegate: DropDelegate {
        func validateDrop(info: DropInfo) -> Bool { info.hasItemsConforming(to: ["public.file-url"]) }
        func dropEntered(info: DropInfo) { }
        func performDrop(info: DropInfo) -> Bool { false }
        func dropUpdated(info: DropInfo) -> DropProposal? { nil }
        func dropExited(info: DropInfo) { }
    }
}
