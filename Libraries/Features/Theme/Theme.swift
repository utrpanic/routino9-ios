import SwiftUI

extension Color {
  
  static var sideMenuBackground: Color { color("side.menu.background") }
  
  private static func color(_ name: String) -> Color {
    return Color(name, bundle: .module)
  }
}
