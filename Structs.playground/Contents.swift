struct Task {
    var title: String
    var isDone: Bool
    
    var statusText: String {
        isDone ? "Done" : "Pending"
    }
}

var task = Task(title: "Learn Kannada", isDone: true)

print(task.title)
print(task.isDone)
print(task.statusText)
