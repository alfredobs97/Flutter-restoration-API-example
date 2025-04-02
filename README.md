# Flutter Restoration API Example 💾✨

[![Flutter](https://img.shields.io/badge/Flutter-3.27.0-blue)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains example code demonstrating the use of Flutter's **Restoration API**. The Restoration API allows Flutter applications to save and restore their user interface (UI) state across operating system interruptions (e.g., when Android or iOS kill the app in the background to free up memory). This significantly improves the user experience by allowing users to pick up where they left off.

## 🎯 Purpose

The code in this repository serves as companion material for:

1.  📄 **Medium Article:** [State Restoration API en Flutter](https://alfredobs97.medium.com/state-restoration-api-en-flutter-69452b04396e) - A detailed explanation of the concepts and implementation (Note: Article is in Spanish).
2.  📊 **Google Slides:** [State Restoration API: Quick introduction](https://docs.google.com/presentation/d/1OD8kmhZf5JrcM1GlND8l5mRVxgf4NiT4Cz2gnPepQJY/edit?usp=sharing) - Step by step tutorial to understand the restoration API

## 🚀 Included Examples

This project illustrates the following key aspects of the Restoration API:

1.  **Initial Setup (`RestorationScope`):** How to prepare your `MaterialApp` or `CupertinoApp` to enable state restoration by assigning a `restorationScopeId`.
2.  **Using `RestorationMixin`:** Implementation in `StatefulWidget`s to manage restorable properties.
3.  **Restoring Simple Data:** Examples using predefined `RestorableProperty` types like:
    *   `RestorableString`
    *   `RestorableInt`
    *   `RestorableBool`
    *   `RestorableDouble`
    *   *(Add others if used, e.g., `RestorableDateTime`)*
4.  **Restoring Navigation State:** How to ensure the navigation stack (routes) is restored correctly. *(Ensure your code actually covers this, or adjust the description)*.
5.  **Creating Custom Restorable Objects:** How to implement your own `RestorableProperty` subclass to save and restore complex data types or custom classes.

## ▶️ Getting Started

To run this project locally:

1.  **Ensure you have Flutter installed.** If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).
2.  **Clone the repository:**
    ```bash
    git clone https://github.com/alfredobs97/Flutter-restoration-API-example.git
    cd YOUR_REPOSITORY
    ```
3.  **Get dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the application:**
    ```bash
    flutter run
    ```

## 🧪 How to Test Restoration

To see the Restoration API in action:

*   **On Android:**
    1.  Run the app.
    2.  Navigate or enter some data.
    3.  Go to your device's Developer Options.
    4.  Find the "Don't keep activities" option and enable it.
    5.  Put the app in the background (Home button) and re-open it from the recent apps list. The state should be restored.
    6.  *Alternative:* You can force stop the app from the app settings and reopen it.
*   **On iOS:**
    1.  Run the app on a physical device (restoration might not work reliably on the simulator by default).
    2.  Navigate or enter some data.
    3.  Put the app in the background.
    4.  Open other memory-intensive apps to encourage the OS to terminate your app.
    5.  Re-open your app. The state should be restored.
    6.  *Alternative (Xcode):* Run the app, put it in the background, stop the process from Xcode, then reopen the app from the device's home screen.

*(Note: The effectiveness and ease of testing restoration can vary depending on the device and OS version).*
