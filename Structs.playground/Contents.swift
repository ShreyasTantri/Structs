struct Task {
    var title: String
    var isDone: Bool
    
    var statusText: String {
        isDone ? "Done" : "Pending"
    }
    
    mutating func markDone() {
        isDone = true
    }
}

var task = Task(title: "Learn Kannada", isDone: false)

print(task.title)
print(task.isDone)
print(task.statusText)

task.markDone()
print(task.isDone)
