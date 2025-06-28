# Personal Card App – Ludwig Envall

A simple Flutter app that displays a personal card with name, photo, contact details, and a clickable LinkedIn link.

## Features

- Displays name, job title, and contact information  
- Profile picture via `assets/ludwig.jpg`  
- Clickable link to LinkedIn profile  
- Clean design using `google_fonts` and `font_awesome_flutter`

## Screenshot

![App screenshot](assets/flutter_01.png)


## Getting Started

### Prerequisites

- Flutter SDK installed: https://docs.flutter.dev/get-started/install  
- Android Studio or another IDE with Flutter plugin  
- An emulator **with Google Play** or a physical Android device (required to open external links)

### Installation

1. Clone this repo or copy the source code  
2. Run:

```bash
flutter pub get
```

3. Add your profile image to `assets/ludwig.jpg`  
4. Launch the app:

```bash
flutter run
```

### Important: Android Permissions

Make sure your `AndroidManifest.xml` includes:

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

### Having Trouble Opening Links?

If the LinkedIn link (or any external link) doesn't open:

- Make sure you're running the app on a device/emulator **with a web browser installed**
- Use `url_launcher` with `LaunchMode.externalApplication`:

```dart
launchUrl(uri, mode: LaunchMode.externalApplication);
```

## Packages Used

- [`url_launcher`](https://pub.dev/packages/url_launcher) – to open external links  
- [`google_fonts`](https://pub.dev/packages/google_fonts) – for custom fonts  
- [`font_awesome_flutter`](https://pub.dev/packages/font_awesome_flutter) – for social media icons

## Contact

📧 ludwigenv@gmail.com  
📱 +46 70 734 29 94  
🔗 [LinkedIn](https://www.linkedin.com/in/ludwigenvall)

---

© 2025 Ludwig Envall
