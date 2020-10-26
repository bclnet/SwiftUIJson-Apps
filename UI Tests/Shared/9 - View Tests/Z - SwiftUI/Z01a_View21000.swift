import SwiftUI
import SwiftUIJson

struct Z01a_View21000: View {
    @State var isPresented = true
    var body: some View {
        VStack {
            Text("View")
            
            
            // MARK: - Style:21032
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("progressViewStyle(_:)").progressViewStyle(ProgressViewStyle())
            }
            
            // MARK: - FileMover:21032
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("fileMover(isPresented:file:onCompletion:)").progressViewStyle(isPresented: $isPresented, file: nil) { result in print("onCompletion") }
                Text("fileMover(isPresented:files:onCompletion:)").progressViewStyle(isPresented: $isPresented, files: nil) { result in print("onCompletion") }
            }
            
            // MARK: - Item:21092
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("listItemTint(_:)").listItemTint(ListItemTint.fixed)
                Text("listItemTint(_:)").listItemTint(Color.gray)
            }
            
            // MARK: - Accessibility:21123
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("accessibilityLinkedGroup(id:in:)").accessibilityLinkedGroup(id: "id", in: nil)
                Text("accessibilityLabeledPair(role:id:in:)").accessibilityLabeledPair(role: .content, id: "id", in: nil)
            }
            
            // MARK: - Effect:21168
            Text("rotation3DEffect(_:axis:anchor:anchorZ:perspective:)").rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 1.0, z: 0.0))
            
            // MARK: - Environment:21202
            Text("transformEnvironment(_:transform:)").transformEnvironment(\.key) { v in print("transform") }
            
            // MARK: - Accessibility:21211
            Text("accessibilityScrollAction(_:)").accessibilityScrollAction { edge in print("handler") }
            
            // MARK: - CoordinateSpace:21218
            Text("coordinateSpace(name:)").coordinateSpace(name: "stack")
            
            // MARK: - Shape:21273
            Text("contentShape(_:eoFill:)").contentShape(Cirle(), eoFill: false)
            
            // MARK: - Preference:21288
            Text("preference(key:value:)").preference(key: "key", value: "value")
            
            // MARK: - Animation:21296
            Text("transaction(_:)").transaction { transaction in print("transform") }
            Text("animation(_:)").animation(nil)
            
            // MARK: - Accessibility:21329
            Text("accessibilityElement(children:)").accessibilityElement(children: .ignore)
            
            // MARK: - Activity:21337
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("userActivity(_:isActive:update:)").userActivity("type", isActive: true) { activity in print("update") }
                Text("userActivity(_:element:update:)").userActivity("type", element: nil) { element, activity in print("update") }
                Text("onContinueUserActivity(_:perform:)").userActivity("type") { activity in print("perform") }
                Text("onOpenURL(perform:)").onOpenURL { url in print("perform") }
            }
            
            // MARK: - Activity:21337
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("handlesExternalEvents(preferring:allowing:)").userActivity(preferring: "", allowing: "")
            }
            
            // MARK: - FileExporter:21435
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)").fileExporter(isPresented: $isPresented, document: nil, contentType: UTType, defaultFilename: nil) { result in print("onCompletion") }
                Text("fileExporter(isPresented:documents:contentType:onCompletion:)").fileExporter(isPresented: $isPresented, documents: nil, contentType: UTType) { result in print("onCompletion") }
                Text("fileExporter(isPresented:document:contentType:defaultFilename:onCompletion:)").fileExporter(isPresented: $isPresented, document: nil, contentType: UTType, defaultFilename: nil) { result in print("onCompletion") } //TODO: ReferenceFileDocument
                Text("fileExporter(isPresented:documents:contentType:onCompletion:)").fileExporter(isPresented: $isPresented, documents: nil, contentType: UTType) { result in print("onCompletion") } //TODO: ReferenceFileDocument
            }
            
            // MARK: - Layout:21543
            Text("layoutPriority(_:)").layoutPriority(1)
            
            // MARK: - Style:21585
            Text("textFieldStyle(_:)").textFieldStyle(BorderedTextFieldStyle())
            
            // MARK: - Mask:21593
            Text("mask(_:)").mask(Rectangle().opacity(0.1))
            
            // MARK: - Navigation:21617
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("navigationBarTitleDisplayMode(_:)").navigationBarTitleDisplayMode(.none)
            }
            
            // MARK: - Navigation:21670
            if #available(iOS 14.0, macOS 999, tvOS 999, watchOS 999, *) {
                Text("navigationTitle(_:)").navigationTitle(Text("title"))
                Text("navigationTitle(_:)").navigationTitle("title")
                Text("navigationTitle(_:)").navigationTitle(String("title"))
            }
            
            // MARK: - Accessibility:21683
            Text("accessibilityAdjustableAction(_:)").accessibilityAdjustableAction { direction in print("handler") }
            
            // MARK: - AppStorage:21690
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("defaultAppStorage(_:)").defaultAppStorage(UserDefaults.standard)
            }
            
            // MARK: - OnDrop:21706
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: [UTType], isTargeted: $isTargeted) { items in print("perform"); return false }
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: [UTType], isTargeted: $isTargeted) { items, point in print("perform"); return false }
                Text("onDrop(of:delegate:)").onDrop(of: [UTType], delegate: DropDelegate)
            }
            
            // MARK: - OnDrop:21782
            if #available(iOS 13.0, macOS 10.15, tvOS 999, watchOS 999, *) {
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: [""], isTargeted: $isTargeted) { items in print("perform"); return false }
                Text("onDrop(of:isTargeted:perform:)").onDrop(of: [""], isTargeted: $isTargeted) { items, point in print("perform"); return false }
            }
            
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
            if #available(iOS 13.0, watchOS 6.0, macOS 999, tvOS 999, *) {
                Text("statusBar(hidden:)").statusBar(hidden: false)
            }
            
            // MARK: - Environment:21960
            Text("environmentObject(_:)").environmentObject(Object()) { Text("content") }
            
            // MARK: - Style:21973
            Text("alert(item:content:)").alert(item: nil) { Text("content") }
            Text("alert(isPresented:content:)").alert(isPresented: $isPresented) { Text("content") }
            
            // MARK: - Navigation:21997
            Text("navigationBarItems(leading:trailing:)").navigationBarItems(leading: { Text("leading") }, trailing: { Text("trailing") } )
            Text("navigationBarItems(leading:)").navigationBarItems(leading: { Text("leading") } )
            Text("navigationBarItems(trailing:)").navigationBarItems(trailing: { Text("trailing") } )
        }
    }
}

struct Z01a_View21000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_View21000()
        }
    }
}
