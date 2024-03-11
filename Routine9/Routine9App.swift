import Features
import Models
import SwiftData
import SwiftUI

@main
struct Routine9App: App {
  var modelContainer: ModelContainer = {
    let schema = Schema([Item.self, Repeat.self, Todo.self])
    let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
    do {
      return try ModelContainer(for: schema, configurations: [configuration])
    } catch {
      fatalError("Could not create ModelContainer: \(error)")
    }
  }()

  var body: some Scene {
    let container = self.modelContainer
    Todo.samples.forEach { todo in
      container.mainContext.insert(todo)
    }
    return WindowGroup {
      MainView()
    }
    .modelContainer(container)
  }
}
