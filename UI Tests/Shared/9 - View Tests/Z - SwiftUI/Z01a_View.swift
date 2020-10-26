import SwiftUI
import SwiftUIJson

// https://swiftui-lab.com/communicating-with-the-view-tree-part-1/
// https://swiftui-lab.com/communicating-with-the-view-tree-part-2/
// https://swiftui-lab.com/communicating-with-the-view-tree-part-3/
enum ViewTest {
    struct TestPreferenceData {
        let bounds: Anchor<CGRect>
    }
    
    struct TestPreferenceKey: PreferenceKey {
        typealias Value = [TestPreferenceData]
        
        static var defaultValue: Value = []
        
        static func reduce(value: inout Value, nextValue: () -> Value) {
            value.append(contentsOf: nextValue())
        }
    }
    
    struct Item: Identifiable {
        var id = "id"
    }
}
