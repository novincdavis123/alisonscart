# 🛒 Alisons Cart

A modern Flutter e‑commerce app demonstrating login, navigation, and a persistent bottom navigation bar with Home, Categories, Cart, and Profile pages.

Alisons Cart allows users to browse products, view categories, manage their cart, and access profile features — all with clean UI and smooth navigation using **persistent_bottom_nav_bar_v2**.  

---
## Project Structure
lib/
├── main.dart
├── login_page.dart
├── bottom_nav_page.dart
├── home_page.dart
├── categories_page.dart
├── cart_page.dart
├── profile_page.dart
└── widgets/
    ├── featured_section.dart
    └── product_card.dart


## 🚀 Features

✨ **Login Screen**  
👤 Email & password fields with visibility toggle  
🔒 Keyboard dismiss behavior

📱 **Persistent Bottom Navigation**  
✔ Home  
✔ Categories  
✔ Cart  
✔ Profile

📌 **Home Page UI**  
🖼 Carousel banner  
📦 Featured & category sections  
📍 Horizontally scrollable lists

🧠 State management using **provider** for app state  

---

## 📸 Screenshots

*(Add screenshots here — e.g., login screen, home screen, bottom nav, etc.)*

---

## 🧰 Technologies Used

- **Flutter** — UI toolkit for building natively compiled apps  
- **provider** — State management  
- **persistent_bottom_nav_bar_v2** — Bottom navigation bar with tab persistence :contentReference[oaicite:1]{index=1}
- **carousel_slider** — Image carousel  
- **Dart** — Programming language

---

## 📦 Getting Started

### Prerequisites

Before you begin, make sure you have the following installed:

- Flutter SDK (stable)  
- Android Studio or VS Code  
- An emulator or physical device  

---

### Install & Run

```bash
# Clone the repository
git clone https://github.com/your‑username/alisonscart.git

# Navigate into project
cd alisonscart

# Fetch dependencies
flutter pub get

# Run the app
flutter run
