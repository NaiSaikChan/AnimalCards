# 🐾 Animal Learning Cards

**Animal Learning Cards** is a multilingual educational iOS app built with SwiftUI, designed to help children learn animal names through interactive flashcards. The app features vibrant images, playful animations, and sound feedback in 5 languages: **English**, **Thai**, **Japanese**, **Mon**, and **Myanmar**.

---

## ✨ Features

- 🐶 **Interactive Animal Cards**  
  Tap a card to hear the animal's name pronounced aloud using iOS Speech Synthesis.

- 🌐 **Multi-Language Support**  
  Instantly switch between 5 languages: English, Thai, Japanese, Mon, and Myanmar.

- 🔈 **Play Sound Per Language**  
  Each card shows a language-specific play button with a flag icon for auditory feedback.

- 🔍 **Search Functionality**  
  Built-in search lets users find animals by name in any supported language.

- 📱 **Responsive Layout**  
  - iPhone Portrait: 1 column  
  - iPhone/iPad Landscape or iPad Portrait: 2 columns

- 📷 **Animal Images from URL**  
  High-quality animal images are loaded dynamically from remote sources.

- 🦾 **Accessibility Ready**  
  Full VoiceOver support and readable Dynamic Type for inclusive learning.

- 🧒 **Child-Safe Design**  
  - No ads  
  - No analytics  
  - No personal data collected  
  - Fully COPPA compliant

---

## 🚀 Getting Started

### Requirements
- iOS 16+
- Xcode 15+
- Swift 5.9+
- Internet connection for loading images

### Run the App
1. Clone the repository
2. Open `.xcodeproj` in Xcode
3. Build and run on a simulator or iOS device

---

## 📁 Project Structure

```

AnimalLearningCards/
├── Assets.xcassets/
├── Models/
│   └── Animal.swift
├── ViewModels/
│   └── AnimalViewModel.swift
├── Views/
│   ├── AnimalGridView\.swift
│   └── AnimalCardView\.swift
├── Resources/
│   └── Localizable.strings
└── LaunchScreen.storyboard

```

---

## 📄 Privacy Policy

Animal Learning Cards does **not collect, store, or share** any user or device data. It uses Apple’s built-in speech features and does not integrate with any third-party services. See full [Privacy Policy](#) (link to hosted version or insert full text if needed).

---

## 📦 App Store Submission

- ✅ Passed internal testing on iPhone and iPad
- ✅ Supports 5 languages with Speech Synthesis
- 🚫 No third-party analytics or ad SDKs
- 🛡 COPPA compliant
- 🎯 Target audience: children aged 2–7

---

## 👨‍💻 Author

**Saik Chan**  
Developer of Animal Learning Cards  
Reach out at [maraohnonpon@hotmail.com] or via GitHub

---

## 📚 License

This project is licensed under the MIT License. See the `LICENSE` file for details.
