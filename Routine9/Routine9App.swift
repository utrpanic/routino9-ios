import Features
import Models
import SwiftData
import SwiftUI

@main
struct Routine9App: App {
  var modelContainer: ModelContainer = {
    let schema = Schema([Day.self, Item.self, Todo.self])
    let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
    do {
      return try ModelContainer(for: schema, configurations: [configuration])
    } catch {
      fatalError("Could not create ModelContainer: \(error)")
    }
  }()

  var body: some Scene {
    WindowGroup {
      MainView()
    }
    .modelContainer(self.modelContainer)
  }
}
