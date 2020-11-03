import SwiftUI
import SwiftUIJson

struct Z01a_View17175: View {
    @State var item: ViewTest.Item? = nil
    @State var isPresented = false
    let timer = Timer.publish(every: 60, on: .main, in: .common) //.autoconnect()

    var body: some View {
        VStack {
            Text("View17175")
//            VStack {
//                // MARK: - Style:17188
//                Text("datePickerStyle(_:)").datePickerStyle(DefaultDatePickerStyle())
//
//                // MARK: - Sheet:17200
//                /*Text("sheet(item:onDismiss:content:)").sheet(item: $item, onDismiss: nil) { item in Text("content") }*/
//                /*Text("sheet(isPresented:onDismiss:content:)").sheet(isPresented: $isPresented, onDismiss: nil) { Text("content") }*/
//
//                // MARK: - FullScreenCover:17227
//                if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
//                    /*Text("fullScreenCover(item:onDismiss:content:)").fullScreenCover(item: $item, onDismiss: nil) { item in Text("Content") }*/
//                    /*Text("fullScreenCover(isPresented:onDismiss:content:)").fullScreenCover(isPresented: $isPresented, onDismiss: nil) { Text("content") }*/
//                }
//
//                // MARK: - Gesture:17256
//                Text("onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)").onLongPressGesture(minimumDuration: 0.5, maximumDistance: 10, pressing: nil) { print("perform") }
//
//                // MARK: - Autocorrection:17266
//                Text("disableAutocorrection(_:)").disableAutocorrection(true)
//
//                // MARK: - Style:17292
//                Text("indexViewStyle(_:)").indexViewStyle(PageIndexViewStyle())
//
//                // MARK: - ItemProvider:17304
//                Text("itemProvider(_:)").itemProvider { nil }
//                Text("itemProvider(_:)").itemProvider { NSItemProvider(object: "String" as NSString) }
//                Text("itemProvider(_:)").itemProvider { NSItemProvider(object: ViewTest.TestObject()) }
//            }
            VStack {
//                // MARK: - DeleteDisabled:17313
//                Text("deleteDisabled(_:)").deleteDisabled(true)
//
//                // MARK: - MoveDisabled:17321
//                Text("moveDisabled(_:)").moveDisabled(true)
//
//                // MARK: - OnDrag:17329
//                Text("onDrag(_:)").onDrag() { NSItemProvider(object: "data" as NSString) }
//
//                // MARK: - Accessibility:17352
                Text("accessibilityAction(_:handler:)").accessibilityAction(.default) { print("handler") }
//                Text("accessibilityAction(named:handler:)").accessibilityAction(named: Text("name")) { print("handler") }
//
//                // MARK: - Accessibility:17362
//                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
//                    Text("accessibilityAction(named:handler:)").accessibilityAction(named: "") { print("handler") }
//                    Text("accessibilityAction(named:handler:)").accessibilityAction(named: String("")) { print("perform") }
//                }
//
//                // MARK: - Style:17372
//                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
//                    Text("tabViewStyle(_:)").tabViewStyle(DefaultTabViewStyle())
//                }

//                // MARK: - Style:17382
//                Text("buttonStyle(_:)").buttonStyle(DefaultButtonStyle())
//
//                // MARK: - OnReceive:17400
//                Text("onReceive(_:perform:)").onReceive(timer) { input in print("perform") }
            }
            /*
            VStack {
                // MARK: - Modifier:17418
                Text("modifier(_:perform:)").modifier(_PaddingLayout(insets: nil))

                // MARK: - Accessibility:17466
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("accessibilityIgnoresInvertColors(_:)").accessibilityIgnoresInvertColors(true)
                }

                // MARK: - HitTesting:17481
                Text("allowsHitTesting(_:)").allowsHitTesting(true)

                // MARK: - OnAppear:17481
                Text("onAppear(perform:)").onAppear() { print("perform") }
                Text("onDisappear(perform:)").onDisappear() { print("perform") }

                // MARK: - ContextMenu:17519
                Text("contextMenu(menuItems:)").contextMenu { Text("item") }

                // MARK: - ContextMenu:17557
                Text("contextMenu(_:)").contextMenu(ContextMenu { Text("item") })
            }
            VStack {
                // MARK: - Style:17611
                Text("menuStyle(_:)").menuStyle(DefaultMenuStyle())

                // MARK: - Gesture:17631
                Text("gesture(_:including:)").gesture(RotationGesture(), including:.all)
                Text("highPriorityGesture(_:including:)").highPriorityGesture(RotationGesture(), including:.all)
                Text("simultaneousGesture(_:including:)").simultaneousGesture(RotationGesture(), including:.all)

                // MARK: - FileImporter:17650
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("fileImporter(isPresented:allowedContentTypes:onCompletion:)").fileImporter(isPresented: $isPresented, allowedContentTypes: []) { result in print("onCompletion") }
                    Text("fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)").fileImporter(isPresented: $isPresented, allowedContentTypes: [], allowsMultipleSelection: true) { result in print("onCompletion") }
                }

                // MARK: - Style:17706 (how different from above)
                Text("buttonStyle(_)").buttonStyle(DefaultButtonStyle())

                // MARK: - Anchor:17724
                Text("transformAnchorPreference(key:value:transform)").transformAnchorPreference(key: ViewTest.AnchorPreferenceKey.self, value: .bounds) { value, anchor in print("transform") }

                // MARK: - Redacted:17731
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("redacted(reason:)").redacted(reason: .placeholder)
                    Text("unredacted()").unredacted()
                }

                // MARK: - Background:17746
                Text("background(_:alignment:)").background(Text("background"), alignment: .center)
            }
            VStack {
                // MARK: - Overlay:17753
                Text("overlay(_:alignment:)").overlay(Text("background"), alignment: .center)
                Text("border(_:width:)").border(Color.purple, width: 4)

                // MARK: - AspectRatio:17792
                Text("aspectRatio(_:contentMode:)").aspectRatio(0.75, contentMode: .fit)
                Text("aspectRatio(_:contentMode:)").aspectRatio(CGSize(width: 3, height: 4), contentMode: .fill)
                Text("scaledToFit()").scaledToFit()
                Text("scaledToFill()").scaledToFill()

                // MARK: - FixedSize:17904
                Text("fixedSize(horizontal:vertical:)").fixedSize(horizontal: true, vertical: false)
                Text("fixedSize()").fixedSize()

                // MARK: - Style:17981
                Text("foregroundColor(_:)").foregroundColor(Color.gray)

                // MARK: - Style:17997
                Text("pickerStyle(_:)").pickerStyle(DefaultPickerStyle())
            }
 */
        }
    }
}

struct Z01a_View17175_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_View17175()
        }
    }
}
