# 🧠 Emotion Mirror II (Flutter APP)

**Emotion Mirror** is a minimal, elegant Flutter mobile app designed to help users reflect on their current emotional state through creative metaphors.
The app invites users to choose how they feel and returns a metaphor that mirrors that feeling—encouraging mindfulness, self-awareness, and emotional literacy.

---

## 🎯 Features

* ✅ Five core emotions: **Happy**, **Sad**, **Angry**, **Tired**, **Loved**
* 🎭 Each emotion has a pool of creative metaphors
* 🌀 Smooth UI with animated transitions (`AnimatedOpacity`)
* 🎨 Clean, responsive interface using Material Design
* 🌗 Soft color palette for a soothing experience
* 📱 One-page app optimized for mobile

---

## 🚀 Getting Started

### Prerequisites

* Flutter SDK (>= 3.10)
* Android Studio or VS Code

### Installation

```bash
git clone https://github.com/bektas-sari/emotion_mirror.git
cd emotion_mirror
flutter pub get
flutter run
```

---

## 📁 Project Structure

```
emotion_mirror/
├── lib/
│   └── main.dart          # Main Flutter application
├── assets/                # (Optional: future assets)
├── pubspec.yaml           # Flutter dependencies
├── screenshots/           # Screenshots for README
└── README.md              # Project documentation
```

---

## 🧠 How It Works

1. The user is asked: **"How do you feel today?"**
2. Emotion buttons (with emoji) let the user select a feeling.
3. Upon selection, a metaphor related to that emotion appears with a fade-in animation.
4. The experience encourages self-awareness through metaphorical thinking.

Metaphors are stored in a `Map<String, List<String>>` and selected randomly using Dart's `Random()` class.

---

## 📦 Technologies Used

* **Flutter** – Cross-platform UI toolkit
* **Dart** – Programming language for Flutter
* **Material Design** – UI components and interaction model

---

## ✨ Future Improvements

* 🔁 Daily metaphor reminders
* 🔊 Audio feedback for selected metaphors
* 🌐 Save/share metaphors on social media
* ☁️ Cloud-based metaphor library (Firebase)

---

## 👨‍💻 Developer

**Bektaş Sarı**
PhD in Advertising, AI + Creativity researcher
Flutter Developer & Software Educator

- **Email:** [bektas.sari@gmail.com](mailto:bektas.sari@gmail.com)  
- **GitHub:** [github.com/bektas-sari](https://github.com/bektas-sari)  
- **LinkedIn:** [linkedin.com/in/bektas-sari](https://www.linkedin.com/in/bektas-sari)  
- **Researchgate:** [researchgate.net/profile/Bektas-Sari-3](https://www.researchgate.net/profile/Bektas-Sari-3)  
- **Academia:** [independent.academia.edu/bektassari](https://independent.academia.edu/bektassari)

---

## 📜 License

This project is licensed under the MIT License.

---

## 💡 Inspiration

This app was inspired by the idea that emotions are often hard to describe—but metaphors make them more accessible. By reflecting on feelings through metaphor, users can develop a deeper emotional understanding and creative perspective.

**Made with ❤️ in Flutter.**
