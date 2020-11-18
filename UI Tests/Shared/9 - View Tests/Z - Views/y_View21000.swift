import SwiftUI
import SwiftUIJson

struct y_View21000: View {
    @Namespace var namespace
    @State var item: ViewTest.Item? = nil
    @State var isPresented = false
    @State var isTargeted = false
    var body: some View {
        VStack {
            Text("View21000")
            VStack {
                // MARK: - Style:21032
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("progressViewStyle(_:)").progressViewStyle(DefaultProgressViewStyle())
                }
                
                // MARK: - FileMover:21048
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("fileMover(isPresented:file:onCompletion:)").fileMover(isPresented: $isPresented, file: nil) { result in print("onCompletion") }
                    Text("fileMover(isPresented:files:onCompletion:)").fileMover(isPresented: $isPresented, files: []) { result in print("onCompletion") }
                }
                #endif
                
                // MARK: - Item:21092
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("listItemTint(_:)").listItemTint(ListItemTint.monochrome)
                    Text("listItemTint(_:)").listItemTint(Color.gray)
                }
                #endif
                
                // MARK: - Accessibility:21123
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("accessibilityLinkedGroup(id:in:)").accessibilityLinkedGroup(id: "id", in: namespace)
                    Text("accessibilityLabeledPair(role:id:in:)").accessibilityLabeledPair(role: .content, id: "id", in: namespace)
                }
                
                // MARK: - Effect:21168
                Text("rotation3DEffect(_:axis:anchor:anchorZ:perspective:)").rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 1.0, z: 0.0))
                
                // MARK: - Environment:21202
                Text("transformEnvironment(_:transform:)").transformEnvironment(\.font) { v in print("transform") }
                
                // MARK: - Accessibility:21211
                Text("accessibilityScrollAction(_:)").accessibilityScrollAction { edge in print("handler") }
                
                // MARK: - CoordinateSpace:21218
                Text("coordinateSpace(name:)").coordinateSpace(name: "stack")
                
                // MARK: - Shape:21273
                Text("contentShape(_:eoFill:)").contentShape(Circle(), eoFill: false)
                
                // MARK: - Preference:21288
                Text("preference(key:value:)").preference(key: ViewTest.StringPreferenceKey.self, value: "")
            }
            VStack {
                // MARK: - Animation:21296
                Text("transaction(_:)").transaction { transaction in print("transform") }
                Text("animation(_:)").animation(nil)
                
                // MARK: - Accessibility:21329
                Text("accessibilityElement(children:)").accessibilityElement(children: .ignore)
                
                // MARK: - Activity:21337
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("userActivity(_:isActive:update:)").userActivity("type", isActive: true) { activity in print("update") }
                    Text("userActivity(_:element:update:)").userActivity("type", element: "") { element, activity in print("update") }
                    Text("onContinueUserActivity(_:perform:)").userActivity("type") { activity in print("perform") }
                    Text("onOpenURL(perform:)").onOpenURL { url in print("perform") }
                }
                
                // MARK: - Activity:21337
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("handlesExternalEvents(preferring:allowing:)").handlesExternalEvents(preferring: [], allowing: [])
                }
                #endif
                
                // MARK: - FileExporter:21435
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)")
                        .fileExporter(isPresented: $isPresented, document: ViewTest.TestDocument(), contentType: .text, defaultFilename: nil) { result in print("onCompletion") }
                    Text("fileExporter(isPresented:documents:contentType:onCompletion:)")
                        .fileExporter(isPresented: $isPresented, documents: [ViewTest.TestDocument()], contentType: .text) { result in print("onCompletion") }
                    Text("fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)")
                        .fileExporter(isPresented: $isPresented, document: ViewTest.TestReferenceDocument(), contentType: .text, defaultFilename: nil) { result in print("onCompletion") }
                    Text("fileExporter(isPresented:documents:contentType:onCompletion:)")
                        .fileExporter(isPresented: $isPresented, documents: [ViewTest.TestReferenceDocument()], contentType: .text) { result in print("onCompletion") }
                }
                #endif
                
                // MARK: - Layout:21543
                Text("layoutPriority(_:)").layoutPriority(1)
                
                // MARK: - Style:21585
                Text("textFieldStyle(_:)").textFieldStyle(DefaultTextFieldStyle())
                
                // MARK: - Mask:21593
                Text("mask(_:)").mask(Rectangle().opacity(0.1))
            }
            VStack {
                // MARK: - Navigation:21617
                #if !os(macOS) && !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, *) {
                    Text("navigationBarTitleDisplayMode(_:)").navigationBarTitleDisplayMode(.automatic)
                }
                #endif
                
                // MARK: - Navigation:21670
                #if !os(macOS) && !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, *) {
                    Text("navigationTitle(_:)").navigationTitle(Text("title"))
                    Text("navigationTitle(_:)").navigationTitle("title")
                    Text("navigationTitle(_:)").navigationTitle(String("title"))
                }
                #endif
                
                // MARK: - Accessibility:21683
                Text("accessibilityAdjustableAction(_:)").accessibilityAdjustableAction { direction in print("handler") }
                
                // MARK: - AppStorage:21690
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("defaultAppStorage(_:)").defaultAppStorage(UserDefaults.standard)
                }
                
                // MARK: - OnDrop:21706
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("onDrop(of:isTargeted:perform:)").onDrop(of: [.text], isTargeted: $isTargeted) { items in print("perform"); return false }
                    Text("onDrop(of:isTargeted:perform:)").onDrop(of: [.text], isTargeted: $isTargeted) { items, point in print("perform"); return false }
                    Text("onDrop(of:delegate:)").onDrop(of: [.text], delegate: ViewTest.TestDropDelegate())
                }
                #endif
                
                // MARK: - OnDrop:21782
                #if !os(tvOS) && !os(watchOS)
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: ["text"], isTargeted: $isTargeted) { items in print("perform"); return false }
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: ["text"], isTargeted: $isTargeted) { items, point in print("perform"); return false }
                #endif
            }
            VStack {
                // MARK: - Effect:21861
                Text("projectionEffect(_:)").projectionEffect(
                    .init(CATransform3DMakeRotation(-30 * (.pi / 180), 0.0, 0.0, 1.0)))
                
                // MARK: - Help:21887
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("help(_:)").help("text")
                    Text("help(_:)").help(Text("text"))
                    Text("help(_:)").help(String("text"))
                }
                
                // MARK: - StatusBar:21942
                #if !os(macOS) && !os(tvOS)
                if #available(iOS 13.0, watchOS 6.0, *) {
                    Text("statusBar(hidden:)").statusBar(hidden: false)
                }
                #endif
                
                // MARK: - Environment:21960
                Text("environmentObject(_:)").environmentObject(ViewTest.TestSettings())
                
                // MARK: - Style:21973
                Text("alert(item:content:)").alert(item: $item) { item in Alert(title: Text("content")) }
                Text("alert(isPresented:content:)").alert(isPresented: $isPresented) { Alert(title: Text("content")) }
                
                // MARK: - Navigation:21997
                #if !os(macOS) && !os(watchOS)
                Text("navigationBarItems(leading:trailing:)").navigationBarItems(leading: Text("leading"), trailing: Text("trailing"))
                Text("navigationBarItems(leading:)").navigationBarItems(leading: Text("leading"))
                Text("navigationBarItems(trailing:)").navigationBarItems(trailing: Text("trailing"))
                #endif
            }
        }
    }
}

struct y_View21000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            y_View21000()
        }
    }
}
