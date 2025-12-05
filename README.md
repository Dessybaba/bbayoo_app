# BBAYOO - Flutter Giveaway App

A beautiful Flutter application for managing giveaways and invitations with Supabase backend.

## Features

- ✅ onboarding screen with gradient design
- ✅ User Authentication (Login/Signup)
- ✅ Password Reset
- ✅ Giveaway Invitation System
- ✅ Countdown Timer
- ✅ Social Sharing
- ✅ Responsive UI
- ✅ Supabase Backend Integration

## Screenshots

- Splash Screen with BBAYOO branding
- Login with email/password and social options
- Email entry for password reset
- Invite screen with countdown timer

## Tech Stack

- **Framework**: Flutter 3.x
- **Backend**: Supabase (Authentication + Database)
- **State Management**: Provider
- **Navigation**: GoRouter
- **UI**: Google Fonts, Custom Widgets

## Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Supabase Account


## APK Download
Download the Android release APK here:  
[Download BBAYOO APK](https://github.com/Dessybaba/bbayoo_app/releases/download/v1.0.0/app-release.apk)

**SHA-256 Checksum:**  
`ea7657d1784cf73087ae14d73b6ab792f92d62df5fab1f9d5fb0483eea36c9f3`

## Setup Instructions


### 1. Clone the Repository
```bash
git clone https://github.com/Dessybaba/bbayoo_app.git
cd bbayoo_app
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Supabase Setup

1. Go to [supabase.com](https://supabase.com) and create a new project
2. In your Supabase dashboard, go to **Settings** > **API**
3. Copy your **Project URL** and **anon public** key
4. Enable Email Authentication:
   - Go to **Authentication** > **Providers**
   - Enable **Email** provider

### 4. Configure Environment Variables

Create a `.env` file in the root directory:
```
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key-here
```

### 5. Run the App
```bash
# For development
flutter run

# For web
flutter run -d chrome

# For Android
flutter run -d android

# For iOS
flutter run -d ios
```

## Build for Production

### Android APK
```bash
flutter build apk --release
```

The APK will be in `build/app/outputs/flutter-apk/app-release.apk`

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

The web build will be in `build/web/`


## Project Structure
```
lib/
├── main.dart                 # App entry point
├── config/
│   └── supabase_config.dart # Supabase configuration
├── theme/
│   └── app_theme.dart       # App theme and colors
├── providers/
│   └── auth_provider.dart   # Authentication state
├── routes/
│   └── app_router.dart      # Navigation configuration
├── screens/
│   ├── onboarding_screen.dart   # Initial splash screen
│   ├── login_screen.dart    # Login page
│   ├── enter_email_screen.dart # Password reset
│   └── invite_screen.dart   # Giveaway invitation
└── widgets/
    ├── custom_button.dart   # Reusable button
    └── custom_textfield.dart # Reusable text field
    decorative_background.dart # Resuable background
```

## Design Decisions

### Architecture
- **Provider Pattern**: Used for state management (simple and effective for this app size)
- **GoRouter**: For type-safe navigation with deep linking support
- **Modular Structure**: Separated concerns (config, theme, providers, screens, widgets)

### UI/UX
- **Gradient Backgrounds**: Purple gradient matching Figma design
- **Consistent Spacing**: 8px grid system for spacing
- **Reusable Components**: Custom widgets for buttons and text fields
- **Dark Mode Support**: Text fields adapt to dark backgrounds
- **Responsive Design**: Works on all screen sizes

### Backend
- **Supabase Auth**: Built-in authentication with email/password
- **Row Level Security**: Database security policies
- **Real-time Capabilities**: Ready for real-time features if needed

## Testing

Test on different devices:
```bash
# Test on web
flutter run -d chrome

# Test on Android emulator
flutter run -d emulator-5554

# Test on iOS simulator
flutter run -d iPhone
```

## Troubleshooting

### Issue: White screen on startup
- Check that `.env` file exists and has correct values
- Ensure Supabase credentials are valid

### Issue: Authentication not working
- Verify Supabase email provider is enabled
- Check network connection
- Verify API keys in `.env`

### Issue: Build errors
```bash
flutter clean
flutter pub get
flutter run
```

## Future Enhancements

- [ ] Social authentication (Google, Apple)
- [ ] Push notifications
- [ ] Share functionality implementation
- [ ] Analytics integration
- [ ] User profile management
- [ ] Giveaway history
- [ ] Winner selection system

## Contact

For questions or support, please contact [adeboladesmond18@gmail.com]

## License

This project is part of a developer test assessment.
```

---

