import SwiftUI
import SwiftUIJson

//struct FocusedDeckKey : FocusedValueKey {
//    typealias Value = Binding<String?>
//}

struct y_View20000: View {
//    @FocusedValue(\FocusedDeckKey) var focusValue: String?
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("View20000")
            VStack {
                // MARK: - Style:20028
                Text("navigationViewStyle(_:)").navigationViewStyle(DefaultNavigationViewStyle())
                
                // MARK: - Style:20037
                Text("listStyle(_:)").listStyle(DefaultListStyle())
                
                // MARK: - Style:20045
                Text("transformPreference(_:callback:)").transformPreference(ViewTest.AnchorPreferenceKey.self) { value in print("callback") }
                
                // MARK: - Style:20053
                Text("flipsForRightToLeftLayoutDirection(_:)").flipsForRightToLeftLayoutDirection(true)
                
                // MARK: - Style:20053
                #if !os(macOS) && !os(watchOS)
                if #available(iOS 13.0, tvOS 13.0, *) {
                    Text("textContentType(_:)").textContentType(.emailAddress)
                }
                #endif
                
                // MARK: - Style:20105
                Text("labelsHidden()").labelsHidden()
                
                // MARK: - Keyboard:20141
                #if !os(tvOS) && !os(watchOS)
                if #available(iOS 14.0, macOS 11.0, *) {
                    Text("keyboardShortcut(_:modifiers:)").keyboardShortcut("A", modifiers: .command)
                    Text("keyboardShortcut(_:)").keyboardShortcut(KeyboardShortcut(KeyEquivalent.init("A")))
                }
                #endif
                
                // MARK: - Navigation:20183
                #if !os(watchOS) && !os(macOS)
                if #available(iOS 13.0, tvOS 13.0, *) {
                    Text("navigationBarHidden(_:)").navigationBarHidden(false)
                    Text("navigationBarTitle(_:)").navigationBarTitle(Text("title"))
                    Text("navigationBarTitle(_:)").navigationBarTitle("title")
                    Text("navigationBarTitle(_:)").navigationBarTitle(String("title"))
                    if #available(iOS 13.0, *) {
                        Text("navigationBarTitle(_:displayMode:)").navigationBarTitle(Text("title"), displayMode: .inline)
                        Text("navigationBarTitle(_:displayMode:)").navigationBarTitle("title", displayMode: .inline)
                        Text("navigationBarTitle(_:displayMode:)").navigationBarTitle(String("title"), displayMode: .inline)
                    }
                    Text("navigationBarBackButtonHidden(_:)").navigationBarBackButtonHidden(false)
                }
                #endif
                
                // MARK: - Style:20440
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    //                    Text("focusedValue(_:_:)").focusedValue(\[.test], 1)
                }
            }
            VStack {
                // MARK: - Text:20455
                Text("multilineTextAlignment(_:)").multilineTextAlignment(.center)
                Text("truncationMode(_:)").truncationMode(.tail)
                Text("lineSpacing(_:)").lineSpacing(10)
                Text("allowsTightening(_:)").allowsTightening(true)
                Text("lineLimit(_:)").lineLimit(2)
                Text("minimumScaleFactor(_:)").minimumScaleFactor(0.5)
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("textCase(_:)").textCase(nil)
                }
                
                // MARK: - Gesture:20440
                #if !os(tvOS)
                if #available(iOS 13.0, macOS 10.10, watchOS 6.0, *) {
                    Text("onTapGesture(count:perform:)").onTapGesture(count: 1) { print("perform") }
                }
                #endif
                
                // MARK: - Style:20650
                Text("listRowInsets(_:)").listRowInsets(EdgeInsets(top: 0, leading: 75, bottom: 0, trailing: 0))
                
                // MARK: - Toolbar:20687
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("toolbar(content:)").toolbar { Text("content") }
                    Text("toolbar(content:)").toolbar { ToolbarItem(id: "id") { Text("content") } }
                    Text("toolbar(id:content:)").toolbar(id: "id") { ToolbarItem(id: "id") { Text("content") } }
                }
            }
            VStack {
                // MARK: - Accessibility:20713
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("accessibilityHidden(_:)").accessibilityHidden(false)
                    Text("accessibilityLabel(_:)").accessibilityLabel(Text("label"))
                    Text("accessibilityValue(_:)").accessibilityValue(Text("value"))
                    Text("accessibilityHint(_:)").accessibilityHint(Text("hint"))
                    Text("accessibilityInputLabels(_:)").accessibilityInputLabels([Text("inputLabels")])
                    Text("accessibilityAddTraits(_:)").accessibilityAddTraits(.isHeader)
                    Text("accessibilityRemoveTraits(_:)").accessibilityRemoveTraits(.isHeader)
                    Text("accessibilityIdentifier(_:)").accessibilityIdentifier("id")
                    Text("accessibilitySortPriority(_:)").accessibilitySortPriority(1)
                    VStack {
                        Text("accessibilityActivationPoint(_:)").accessibilityActivationPoint(CGPoint(x: 0, y: 0))
                        Text("accessibilityActivationPoint(_:)").accessibilityActivationPoint(UnitPoint(x: 0, y: 0))
                    }
                }
                
                // MARK: - Accessibility:20777
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("accessibilityLabel(_:)").accessibilityLabel("label")
                    Text("accessibilityLabel(_:)").accessibilityLabel(String("label"))
                    Text("accessibilityValue(_:)").accessibilityValue("value")
                    Text("accessibilityValue(_:)").accessibilityValue(String("value"))
                    Text("accessibilityHint(_:)").accessibilityHint("hint")
                    Text("accessibilityHint(_:)").accessibilityHint(String("hint"))
                    Text("accessibilityInputLabels(_:)").accessibilityInputLabels(["inputLabels"])
                    Text("accessibilityInputLabels(_:)").accessibilityInputLabels([String("inputLabels")])
                }
                
                // MARK: - Accessibility:20777 (deprecated)
                VStack {
                    Text("accessibility(hidden:)").accessibility(hidden: false)
                    Text("accessibility(label:)").accessibility(label: Text("label"))
                    Text("accessibility(value:)").accessibility(value: Text("value"))
                    Text("accessibility(hint:)").accessibility(hint: Text("value"))
                    Text("accessibility(inputLabels:)").accessibility(inputLabels: [Text("inputLabels")])
                    Text("accessibility(addTraits:)").accessibility(addTraits: .isHeader)
                    Text("accessibility(removeTraits:)").accessibility(removeTraits: .isHeader)
                    Text("accessibility(identifier:)").accessibility(identifier: "id")
//                    Text("accessibility(selectionIdentifier:)").accessibility(selectionIdentifier: "id")
                    Text("accessibility(sortPriority:)").accessibility(sortPriority: 1)
                }
                VStack {
                    Text("accessibility(activationPoint:)").accessibility(activationPoint: CGPoint(x: 0, y: 0))
                    Text("accessibility(activationPoint:)").accessibility(activationPoint: UnitPoint(x: 0, y: 0))
                }
                
                // MARK: - Tag:20962
                Text("id(_:)").id("id")
                
                // MARK: - Preference:20973
                Text("overlayPreferenceValue(_:_:)").overlayPreferenceValue(ViewTest.AnchorPreferenceKey.self) { id in Text("transform") }
                Text("backgroundPreferenceValue(_:_:)").backgroundPreferenceValue(ViewTest.AnchorPreferenceKey.self) { value in Text("transform") }
                
                // MARK: - OnChange:20987
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("onChange(of:perform:)").onChange(of: "") { newState in print("perform") }
                }
            }
        }
    }
}

struct y_View20000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            y_View20000()
        }
    }
}
