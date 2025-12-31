Swift Struct: Task

Overview
A minimal, copyable README that explains a simple Swift `struct` used to model a to-do task. Shows stored properties, a computed property, a mutating method, and basic usage.

What it demonstrates
- Stored properties: `title` (String), `isDone` (Bool)
- Computed property: `statusText` returns "Done" or "Pending" based on `isDone`
- Mutating method: `markDone()` updates a property on a value type
- Value semantics: `struct` instances are copied when assigned or passed around

API (short)
- `var title: String` — task title
- `var isDone: Bool` — completion state
- `var statusText: String` — computed; `"Done"` if `isDone` is true, otherwise `"Pending"`
- `mutating func markDone()` — sets `isDone = true`

Example
1. Create a task:
   `var task = Task(title: "Learn Kannada", isDone: false)`

2. Inspect:
   `print(task.title)`       // "Learn Kannada"
   `print(task.isDone)`      // false
   `print(task.statusText)`  // "Pending"

3. Update:
   `task.markDone()`
   `print(task.isDone)`      // true
   `print(task.statusText)`  // "Done"

Notes / tips
- `mutating` is required because `struct`s are value types; methods that change `self` or its stored properties must be marked `mutating`.
- Use computed properties for derived display values instead of storing redundant state.
- Prefer `struct` for lightweight model types with value semantics (copy-on-assign behavior).
