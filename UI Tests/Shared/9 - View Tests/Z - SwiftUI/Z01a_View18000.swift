import SwiftUI
import SwiftUIJson

struct Z01a_View18000: View {
    @State var item: ViewTest.Item? = nil
    @State var isPresented = true
    var body: some View {
        VStack {
            Text("View18000")
            VStack {
                // MARK: - Padding:18005
                Text("padding(_:)").padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                Text("padding(_:_:)").padding(.bottom, nil)
                Text("padding(_:)").padding(10.0)
                
                // MARK: - Position:18094
                Text("offset(_:)").offset(CGSize(width: 20, height: 25))
                Text("offset(x:y:)").offset(x: 20, y: 50)
                
                // MARK: - Position:18147
                Text("alignmentGuide(_:computeValue:)").alignmentGuide(HorizontalAlignment.center) { _ in  50 }
                Text("alignmentGuide(_:computeValue:)").alignmentGuide(VerticalAlignment.center) { _ in -20 }
                
                // MARK: - Position:18235
                Text("position(_:)").position(CGPoint(x: 175, y: 100))
                Text("position(x:y:)").position(x: 175, y: 100)
            }
            VStack {
                // MARK: - SafeArea:18276
                Text("edgesIgnoringSafeArea(_:)").edgesIgnoringSafeArea([.top])

                // MARK: - SafeArea:18320
                Text("ignoresSafeArea(_:edges:)").ignoresSafeArea(.all, edges: .all)

                // MARK: - Environment:18339
                Text("environment(_:_:)").environment(\.truncationMode, .head)

                // MARK: - ZIndex:18386
                Text("zIndex(_:)").zIndex(1)

                // MARK: - Effect:18386
                Text("transformEffect(_:)").transformEffect(CGAffineTransform(rotationAngle: -30 * (.pi / 180)))

                // MARK: - Sheet:18447
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("actionSheet(item:content:)").actionSheet(item: $item) { item in ActionSheet(title: Text("content")) }
                    Text("actionSheet(isPresented:content)").actionSheet(isPresented: $isPresented) { ActionSheet(title: Text("content")) }
                }

                // MARK: - Style:18476
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("accentColor(_:)").accentColor(.purple)
                }

                // MARK: - Disabled:18524
                Text("disabled(_:)").disabled(false)

                // MARK: - Effect:18386
                Text("rotationEffect(_:anchor:)").rotationEffect(.degrees(22), anchor: .center)
            }
            VStack {
                // MARK: - Effect:18573
                Text("scaleEffect(_:anchor:)").scaleEffect(CGSize(width: 0.9, height: 1.3), anchor: .leading)
                Text("scaleEffect(_:anchor:)").scaleEffect(2, anchor: .leading)
                Text("scaleEffect(x:y:anchor:)").scaleEffect(x: 0.5, y: 0.5, anchor: .bottomTrailing)

                // MARK: - Effect:18652
                Text("blur(radius:opaque:)").blur(radius: 2.0, opaque: false)

                // MARK: - Style:18689
                Text("brightness(_:)").brightness(0.5)

                // MARK: - Style:18723
                Text("colorInvert()").colorInvert()

                // MARK: - Style:18777
                Text("colorMultiply(_:)").colorMultiply(Color.purple)

                // MARK: - Style:18828
                Text("contrast(_:)").contrast(0.5)
            }
            VStack {
                // MARK: - Effect:18881
                Text("grayscale(_:)").grayscale(0.5)

                // MARK: - Effect:18919
                Text("hueRotation(_:)").hueRotation(.degrees(22))

                // MARK: - Style:18957
                Text("preferredColorScheme(_:)").preferredColorScheme(.dark)

                // MARK: - Style:18986
                Text("luminanceToAlpha()").luminanceToAlpha()
            }
        }
    }
}

struct Z01a_View18000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_View18000()
        }
    }
}
