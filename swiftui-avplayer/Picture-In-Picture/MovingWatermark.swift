
import SwiftUI
import Foundation

struct MovingWatermark: View {

    let text: String

    @State private var position: CGPoint = .zero

    var body: some View {

        GeometryReader { geo in

            Text(text)
                .font(.caption.bold())
                .padding(8)
                .foregroundColor(.white)
                .background(.black.opacity(0.45))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .position(position)
                .onAppear {

                    move(in: geo.size)

                    Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
                        move(in: geo.size)
                    }
                }
        }
    }

    private func move(in size: CGSize) {

        let padding: CGFloat = 30

        withAnimation(.easeInOut(duration: 0.5)) {

            position = CGPoint(
                x: .random(in: padding...(size.width - padding)),
                y: .random(in: padding...(size.height - padding))
            )
        }
    }
}
