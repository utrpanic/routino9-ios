import Models
import SwiftUI

struct HomeView: View {
  
  var todos: [Todo]
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .leading, spacing: 5) {
        HStack {
          Text("reminderList.name")
          Spacer()
          Text("\(self.todos.count)")
        }
        .font(.system(.largeTitle, design: .rounded))
        .foregroundColor(.primary)
        .padding(.horizontal)
        .bold()

        List {
          ForEach(self.todos) { todo in
            Text("\(todo.name)")
          }
          .onDelete(perform: self.delete)
        }
        .listStyle(.inset)
      }
      .navigationBarTitleDisplayMode(.inline)
//      .toolbar {
//        ToolbarItemGroup(placement: .bottomBar) {
//          Button {
//            reminderList.reminder.append(Reminder(name: ""))
//          } label: {
//            HStack(spacing: 7) {
//              Image(systemName: "plus.circle.fill")
//              Text("New Reminder")
//            }
//            .font(.system(.body, design: .rounded))
//            .bold()
//            .foregroundColor(.primary)
//          }
//          Spacer()
//        }
//      }
    }
  }

  func delete(_ indexSet: IndexSet) {
//    for index in indexSet {
//      reminderList.reminder.remove(at: index)
//    }
//    try! modelContext.save()
  }
}

#Preview {
  HomeView(todos: Todo.samples)
}
