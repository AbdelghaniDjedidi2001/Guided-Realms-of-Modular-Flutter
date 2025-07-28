# Flutter Advanced Modular App Example

A production-grade Flutter app demonstrating **clean architecture**, **multi-modular design**, **BLoC state management**, and **Melos monorepo configuration** — based on the *Flutter Advanced Course: Multi-Modular & Clean Architecture*.

---

## 🚀 Features

- ✅ Multi-Modular Architecture
- 🎯 BLoC State Management
- 🌐 Networking (Dio + Retrofit)
- 🧩 Dependency Injection (get_it, injectable)
- ⚠️ Error Handling
- 🔐 Session & Preference Management
- 🧭 Scalable Navigation System
- 💾 Data Caching & Performance Optimization
- 📦 Melos for Monorepo & Package Management

---

## 📁 Project Structure

```bash
/lib
  ├── core/                # Core logic shared across modules
  ├── features/            # Independent feature modules (auth, movies, etc.)
  ├── shared/              # Reusable widgets, themes, extensions
  ├── navigation/          # Navigation setup and routing config
  ├── injection/           # Dependency injection setup
  └── main.dart            # App entry point
