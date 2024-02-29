import Models
import SwiftUI

struct MenuView: View {
  @Binding var selectedMenu: Int
  @Binding var presentSideMenu: Bool

  var body: some View {
    HStack {
      ZStack {
        Rectangle()
          .frame(width: 270)
          .shadow(color: .purple.opacity(0.1), radius: 5, x: 0, y: 3)
        VStack(alignment: .leading, spacing: 0) {
          ForEach(Menu.allCases, id: \.self) { row in
            self.RowView(
              isSelected: self.selectedMenu == row.rawValue,
              imageName: row.iconName,
              title: row.title
            ) {
              self.selectedMenu = row.rawValue
              self.presentSideMenu.toggle()
            }
          }
          Spacer()
        }
        .padding(.top, 100)
        .frame(width: 270)
        .background(Color.sideMenuBackground)
      }

      Spacer()
    }
  }

  func RowView(isSelected: Bool, imageName: String, title: String, hideDivider _: Bool = false, action: @escaping (() -> Void)) -> some View {
    Button {
      action()
    } label: {
      VStack(alignment: .leading) {
        HStack(spacing: 20) {
          Rectangle()
            .fill(isSelected ? .purple : .white)
            .frame(width: 5)

          ZStack {
            Image(imageName)
              .resizable()
              .renderingMode(.template)
              .foregroundColor(isSelected ? .black : .gray)
              .frame(width: 26, height: 26)
          }
          .frame(width: 30, height: 30)
          Text(title)
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(isSelected ? .black : .gray)
          Spacer()
        }
      }
    }
    .frame(height: 50)
    .background(
      LinearGradient(colors: [isSelected ? .purple.opacity(0.5) : .white, .white], startPoint: .leading, endPoint: .trailing)
    )
  }
}
