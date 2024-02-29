import SwiftUI

struct SideMenu: View {
  @Binding var isShowing: Bool
  var content: AnyView

  var body: some View {
    ZStack {
      if self.isShowing {
        Color.black
          .opacity(0.3)
          .onTapGesture(perform: self.onBackgroundTap)
        self.content
          .transition(.move(edge: .leading))
      }
    }
    .ignoresSafeArea()
    .animation(.easeInOut, value: self.isShowing)
  }

  private func onBackgroundTap() {
    self.isShowing.toggle()
  }
}
