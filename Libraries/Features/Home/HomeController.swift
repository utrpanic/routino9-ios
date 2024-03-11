import Foundation
import Models
import SwiftData
import SwiftUI

struct HomeController: View {
  @State var day: Day
  @Query var todos: [Todo]

  @Environment(\.modelContext) private var modelContext

  init(date: Day) {
    self._day = State(initialValue: date)
    self._todos = Query(filter: #Predicate {
      $0.name.contains("1")
    })
  }

  var body: some View { HomeView(todos: self.todos) }
}
