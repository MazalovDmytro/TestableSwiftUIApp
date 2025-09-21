# TestableSwiftUIApp

A minimal SwiftUI application that demonstrates the usage of common SwiftUI elements and includes both **Unit Tests** and **UI Tests** with XCTest.

---

## Features

- **FormView**
  - `TextField` for user name  
  - `Stepper` for age  
  - `Toggle` for subscription  
  - `Button` to save user data  
  - Result displayed in a `Text` label  

- **ListView**
  - `List` of notes  
  - `TextField` + `Button` to add new notes  

- **TabView**
  - Switch between `FormView` and `ListView`

---

## Testing

### Unit Tests
Located in `TestableSwiftUIAppTests/`:
- `UserModel` initialization and property validation

### UI Tests
Located in `TestableSwiftUIAppUITests/`:
- Fill and save data in `FormView`
- Add a new note in `ListView`
- Assertions use **accessibility identifiers** for reliability

Run tests in Xcode with:
```bash
⌘U
```

---

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/MazalovDmytro/TestableSwiftUIApp.git
   ```
2. Open the project in **Xcode**.
3. Build & run on Simulator or device.
4. Run Unit and UI tests with `⌘U`.

---

## Purpose

- Demonstrate basic **SwiftUI UI elements** in action  
- Show how to set up and structure **Unit** and **UI tests** with XCTest  
- Provide a lightweight, testable template for learning and interviews  

---

Author: [Dmytro Mazalov](https://github.com/MazalovDmytro)
