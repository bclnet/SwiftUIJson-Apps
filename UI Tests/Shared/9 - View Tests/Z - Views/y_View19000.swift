import SwiftUI
import SwiftUIJson
import WidgetKit

struct y_View19000: View {
    @Namespace var namespace
    @State var item: ViewTest.Item? = nil
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("View19000")
            VStack {
                // MARK: - Style:19035
                Text("saturation()").saturation(0.5)
                
                // MARK: - Effect:19072
                Text("transition(_:)").transition(.identity)
                
                // MARK: - Style:19080
                Text("opacity(_:)").opacity(0.5)

                // MARK: - Animation:19121
                Text("animation(_:value:)").animation(nil, value: 1)

                // MARK: - Tag:19138
                Text("tag(_:)").tag("tag")

                // MARK: - Composite:19180
                Text("blendMode(_:)").blendMode(.colorBurn)

                // MARK: - Composite:19212
                Text("listRowBackground(_:)").listRowBackground(Image(systemName: "sparkles"))

                // MARK: - Composite:19250
                Text("drawingGroup(opaque:colorMode:)").drawingGroup(opaque: false, colorMode: .nonLinear)

                // MARK: - Composite:19299
                Text("compositingGroup(_:)").compositingGroup()
            }
            VStack {
                // MARK: - Preview:19340
                Text("previewDevice(_:)").previewDevice(.none)
                Text("previewLayout(_:)").previewLayout(.device)
                Text("previewDisplayName(_:)").previewDisplayName("value")
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("previewContext(_:)").previewContext(WidgetPreviewContext(family: .systemMedium))
                }

                // MARK: - Shape:19388
                Text("clipShape(_:)").clipShape(Circle())
                Text("clipped(antialiased:)").clipped(antialiased: false)
                Text("cornerRadius(_:antialiased:)").cornerRadius(25, antialiased: true)

                // MARK: - Style:19476
                Text("shadow(color:radius:x:y:)").shadow(color: Color.gray, radius: 1.0, x: CGFloat(0), y: CGFloat(0))

                // MARK: - Style:19517
                Text("toggleStyle(_:)").toggleStyle(SwitchToggleStyle())
            }
            VStack {
                // MARK: - Style:19536
                Text("colorScheme(_:)").colorScheme(.light)
                if #available(macOS 11.0, *) {
                    Text("imageScale(_:)").imageScale(.medium)
                }
                Text("font(_:)").font(.system(size: 16, weight: .light, design: .default))

                // MARK: - Frame:19628
                Text("frame(width:height:alignment:)").frame(width: 200, height: 30, alignment: .topLeading)
//                Text("frame()").frame()

                // MARK: - Frame:19696
                Text("frame(_:)").frame(minWidth: nil, idealWidth: nil, maxWidth: nil, minHeight: nil, idealHeight: nil, maxHeight: nil, alignment: .center)

                // MARK: - Style:19743
                if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                    Text("groupBoxStyle(_:)").groupBoxStyle(DefaultGroupBoxStyle())
                }

                // MARK: - TabItem:19755
                Text("tabItem(_:)").tabItem { Text("label") }

                // MARK: - Popover:19801
                if #available(iOS 13.0, macOS 10.15, tvOS 999, watchOS 999, *) {
                    Text("popover(item:attachmentAnchor:arrowEdge:content:)").popover(item: $item, attachmentAnchor: .rect(.bounds), arrowEdge: .top) { item in Text("content") }
                    Text("popover(isPresented:attachmentAnchor:arrowEdge:content:)").popover(isPresented: $isPresented, attachmentAnchor: .rect(.bounds), arrowEdge: .top) { Text("content") }
                }
            }
            VStack {
                // MARK: - Style:19840
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("labelStyle(_:)").labelStyle(DefaultLabelStyle())
                }

                // MARK: - OnHover:19857
                if #available(iOS 13.4, macOS 10.15, tvOS 999, watchOS 999, *) {
                    Text("onHover(perform:)").onHover { enter in print("perform") }
                }

                // MARK: - Effect:19878
                if #available(iOS 13.4, macOS 999, tvOS 999, watchOS 999, *) {
                    Text("hoverEffect(effect:)").hoverEffect(.automatic)
                }

                // MARK: - Hidden:19895
                Text("hidden()").hidden()

                // MARK: - Keyboard:19907
                if #available(iOS 13.0, tvOS 13.0, macOS 999, watchOS 999, *) {
                    Text("keyboardType(_:)").keyboardType(.emailAddress)
                }

                // MARK: - Keyboard:19940
                if #available(iOS 13.0, tvOS 13.0, macOS 999, watchOS 999, *) {
                    Text("autocapitalization(_:)").autocapitalization(UITextAutocapitalizationType.words)
                }

                // MARK: - Effect:19967
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("matchedGeometryEffect(id:in:properties:anchor:isSource:)").matchedGeometryEffect(id: 1, in: namespace, properties: .frame, anchor: .center, isSource: true)
                }

                // MARK: - OnPreferenceChange:19895
                Text("onPreferenceChange(_:perform:)").onPreferenceChange(ViewTest.AnchorPreferenceKey.self) { value in print("perform") }
            }
        }
    }
}

struct y_View19000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            y_View19000()
        }
    }
}
