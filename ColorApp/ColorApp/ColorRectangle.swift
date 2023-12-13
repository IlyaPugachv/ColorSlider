import SwiftUI

struct ColorRectangle: View {
    var color: Color
    var width: CGFloat
    var height: CGFloat

    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: width, height: height)
    }
}

#Preview {
    ZStack {
//        Color(.yellow)
        ColorRectangle(color: .gray, width: 250, height: 250)
    }
    
}
