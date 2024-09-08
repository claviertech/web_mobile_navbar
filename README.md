---

# WebMobileNavbar

A responsive and flexible navbar widget for web and mobile applications built with Flutter. The `WebMobileNavbar` allows you to create a customizable navigation bar that works seamlessly across different screen sizes.

## Features

- **Responsive Design**: Works on both web and mobile platforms.
- **Customizable**: Easily change colors, font size, and height to match your app's theme.
- **Flexible**: Add any number of navigation items with icons and labels.
- **Simple API**: Easy to use with minimal setup required.

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  web_mobile_navbar: 0.0.1
```

Install the package using the following command:

```bash
flutter pub get
```

## Usage

Import the package in your Dart code:

```dart
import 'package:web_mobile_navbar/web_mobile_navbar.dart';
```

### Example

Here is an example of how to use `WebMobileNavbar` in your Flutter project:

```dart
import 'package:flutter/material.dart';
import 'package:web_mobile_navbar/web_mobile_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Web Mobile Navbar Example')),
        body: Center(child: Text('Content here')),
        bottomNavigationBar: WebMobileNavbar(
          items: [
            NavItem(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                print('Home tapped');
              },
            ),
            NavItem(
              icon: Icons.search,
              label: 'Search',
              onTap: () {
                print('Search tapped');
              },
            ),
            NavItem(
              icon: Icons.person,
              label: 'Profile',
              onTap: () {
                print('Profile tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

### Parameters

- `items`: A list of `NavItem` objects representing the items in the navbar.
- `backgroundColor`: The background color of the navbar (default: `Colors.white`).
- `itemColor`: The color of the unselected items (default: `Colors.black87`).
- `selectedItemColor`: The color of the selected item (default: `Colors.blue`).
- `height`: The height of the navbar (default: `60.0`).
- `fontSize`: The font size of the item labels (default: `16.0`).

### NavItem

The `NavItem` class is used to define each navigation item in the navbar:

- `icon`: The icon to display for the navigation item.
- `label`: The text label for the navigation item.
- `onTap`: The callback function that is triggered when the item is tapped.
- `isSelected`: A boolean value to indicate if the item is currently selected (default: `false`).

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request on [GitHub](https://github.com/claviertech/web_mobile_navbar).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
