import SwiftUI
import SwiftUIJson

struct z_Path: View {
    var body: some View {
        VStack {
            Text("Path")
            // MARK: - Style:10614
            VStack {
                Path()
                Path(CGPath(rect: CGRect(x: 0, y: 0, width: 100, height: 100), transform: nil))
                Path(CGMutablePath(rect: CGRect(x: 0, y: 0, width: 100, height: 100), transform: nil))
                Path(CGRect(x: 0, y: 0, width: 100, height: 100))
                Path(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 100), cornerSize: CGSize(width: 100, height: 100), style: .circular)
                Path(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 100), cornerRadius: 10.0, style: .circular)
                Path(ellipseIn: CGRect(x: 0, y: 0, width: 100, height: 100))
                Path("bad")
                Path("0 0 m  -55.2285 0 -100 44.7715 -100 100 c -100 155.228 -55.2285 200 -1.83697e-14 200 c  55.2285 200 100 155.228 100 100 c 100 44.7715 55.2285 0 6.12323e-15 0 c h 0 45 m 63 -23 171 87 0 200 c -171 87 -63 -23 0 45 c h")
            }
            VStack {
                Path().strokedPath(StrokeStyle())
                Path().trimmedPath(from: 5.0, to: 10.0)
                Path().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
            }
            // MARK: - Style:10751
            VStack {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 300), control: CGPoint(x: 100, y: 300))
                    path.addCurve(to: CGPoint(x: 100, y: 300), control1: CGPoint(x: 100, y: 300), control2: CGPoint(x: 100, y: 300))
                    path.closeSubpath()
                }
                Path { path in
                    path.addRect(CGRect(x: 0, y: 0, width: 100, height: 100), transform: .identity)
                    path.addRoundedRect(in: CGRect(x: 0, y: 0, width: 100, height: 100), cornerSize: CGSize(width: 10, height: 10), style: .circular, transform: .identity)
                    path.addEllipse(in: CGRect(x: 0, y: 0, width: 100, height: 100), transform: .identity)
                    path.addRects([CGRect(x: 0, y: 0, width: 100, height: 100)], transform: .identity)
                    path.addLines([CGPoint(x: 0, y: 0)])
                    path.addRelativeArc(center: CGPoint(x: 0, y: 0), radius: 5, startAngle: Angle(degrees: 15), delta: Angle(degrees: 5), transform: .identity)
                    path.addArc(tangent1End: CGPoint(x: 0, y: 0), tangent2End: CGPoint(x: 0, y: 0), radius: 5, transform: .identity)
                    path.addPath(Path(CGRect(x: 0, y: 0, width: 100, height: 100)), transform: .identity)
                }
                Path().applying(.identity)
                Path().offsetBy(dx: 1, dy: 1)
            }
        }
    }
}

struct z_Path_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Path()
        }
    }
}
