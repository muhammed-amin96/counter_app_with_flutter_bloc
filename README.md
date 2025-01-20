# Counter App with Flutter Bloc  

A simple counter application built using **Flutter** and the **Flutter Bloc** package to demonstrate state management using the Cubit pattern.  

## 📋 Description  

This app allows users to increment and decrement a counter. It displays a notification when the counter reaches specific thresholds (-10 or 10).  

## 🚀 Features  
- Increment and decrement the counter using buttons.  
- Notifications when the counter reaches -10 or 10.  
- Clean state management using Cubit and BlocConsumer.  

## 🛠️ Technologies Used  
- **Framework:** Flutter  
- **State Management:** Flutter Bloc (Cubit pattern)  
- **Language:** Dart 

## 🏗️ Project Structure
```plaintext
lib  
├── main.dart                # Application entry point  
├── screens  
│   ├── home_screen.dart     # UI for the home screen  
│   ├── cubits  
│       ├── counter_cubit.dart  # CounterCubit for state management  
│       ├── counter_state.dart  # States for the CounterCubit  

```

## How It Works

### State Management

The **CounterCubit** manages the counter value and emits the following states:

- `CounterInitial`: Initial state when the counter is 0.
- `CounterIncremented`: State when the counter is incremented.
- `CounterDecremented`: State when the counter is decremented.

The `BlocConsumer` widget listens to the state changes and rebuilds the UI accordingly.

### Notifications

When the counter reaches -10 or 10, a `SnackBar` notification is displayed using the `listener` property of `BlocConsumer`.

## ✨ Usage

1. Tap the floating action button to increment the counter.
2. Tap the "Decrement" button to decrease the counter.
3. Observe the notifications at counter values of -10 or 10.

