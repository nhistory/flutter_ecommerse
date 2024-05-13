# flutter_ecommerse

A new Flutter project.

# Flutter Routing

Routing in Flutter refers to the process of navigating between different screens or pages within a Flutter application. Flutter provides a powerful and flexible routing system that allows developers to define and manage navigation flows efficiently.

## routes.dart

In this project, Routes instances were identified at the `/lib/constants/routes.dart` instead of using `Navigator` API directly.

```dart
// routes.dart
class Routes {
  static Routes instance = Routes();
  Future<dynamic> pushAndRemoveUntil(
      {required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => widget), (route) => false);
  }

  Future<dynamic> push(
      {required Widget widget, required BuildContext context}) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => widget));
  }
}
```

> [!NOTE] Flutter applications with advanced navigation and routing requirements (such as a web app that uses direct links to each screen, or an app with multiple Navigator widgets) should use a routing package such as go_router that can parse the route path and configure the Navigator whenever the app receives a new deep link.
