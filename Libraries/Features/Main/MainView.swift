import Models
import SwiftData
import SwiftUI

public struct MainView: View {
  @State var presentSideMenu: Bool
  @State var selectedMenuIndex: Int
  
  public init(
    presentSideMenu: Bool = true,
    selectedMenuIndex: Int = 0
  ) {
    self.presentSideMenu = presentSideMenu
    self.selectedMenuIndex = selectedMenuIndex
  }

  public var body: some View {
    ZStack {
      TabView(selection: self.$selectedMenuIndex) {
        HomeView(presentSideMenu: self.$presentSideMenu)
      }
      SideMenu(
        isShowing: self.$presentSideMenu,
        content: AnyView(
          MenuView(
            selectedMenu: self.$selectedMenuIndex,
            presentSideMenu: self.$presentSideMenu
          )
        )
      )
    }
  }
}

#Preview {
  MainView(presentSideMenu: false, selectedMenuIndex: 0)
}
