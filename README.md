# Department App (BIM493 Mobile Programming I - Assignment #1)

This Flutter app implements the assignment requirements:

- Login and Sign Up screens with local storage using `shared_preferences`.
- Instructors (People) page with Call support (opens phone dialer after confirmation) using `url_launcher`.
- Infrastructure page with classroom photos; double-tap an image to open it on a new page and pinch-to-zoom.

## Group Information
- Full Name 1 — Student ID 1
- Full Name 2 — Student ID 2
- Full Name 3 — Student ID 3

Replace the names/IDs above before submission.

## How to Run
1. Ensure Flutter SDK is installed.
2. Fetch dependencies:
   ```bash
   flutter pub get
   ```
3. Run on a device or emulator:
   ```bash
   flutter run
   ```

## Notes
- Phone dialer uses `url_launcher`. Make sure a device with calling capability is used for testing.
- No backend is required; credentials are stored locally via `shared_preferences`.

## Screens
- `lib/screens/login_page.dart`
- `lib/screens/signup_page.dart`
- `lib/screens/home_page.dart` (Tabs: People, Infrastructure)
- `lib/screens/people_page.dart`
- `lib/screens/infrastructure_page.dart`
- `lib/screens/image_viewer_page.dart`
