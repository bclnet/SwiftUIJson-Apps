import SwiftUI
import SwiftUIJson

struct Z01a_Path: View {
    var body: some View {
        VStack {
            Text("Path")
            VStack {
                Path()
                Path(UIBezierPath().cgPath)
                Path(CGMutablePath())
                Path(CGRect(x: 0, y: 0, width: 10, height: 10))
                Path(roundedRect: CGRect(x: 0, y: 0, width: 10, height: 10), cornerSize: CGSize(width: 10, height: 10), style: .circular)
                Path(roundedRect: CGRect(x: 0, y: 0, width: 10, height: 10), cornerRadius: 10.0, style: .circular)
                Path(ellipseIn: CGRect(x: 0, y: 0, width: 10, height: 10))
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 300), control: CGPoint(x: 100, y: 300))
                    //...
                }
                Path("string")
            }
            VStack {
                Path().strokedPath(StrokeStyle())
                Path().trimmedPath(from: 5.0, to: 10.0)
                Path().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
            }
        }
    }
}

struct Z01a_Path_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Path()
        }
    }
}
