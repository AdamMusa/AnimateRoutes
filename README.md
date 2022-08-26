<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

animate_routes is a minimalist library to provider some cool transition animation when you navigate between the screens ,also provide some shorcuts to navigate easily and you can open the dialog in just three lines of code . 

## Features

animate_routes isn't a route manger itself is just a hack of productivy .
AnimatedRoute allow you to open snackbar, open bottomSheet and dialog easily with less boilerplate .

## Getting started

# Installing

Add animate_routes to your pubspec.yaml file:

```yaml
dependencies:
  animate_routes:
```

Import animate_routes in files that it will be used:

```dart
import 'package:animate_routes/animate_routes.dart';
```
You can use just like this

```dart
context.go(AnimateRoute(transition:Transition.downToUp,screen:Home()));
or 
Navigator.of(context).push(AnimateRoute(transition:Transition.downToUp,screen:Home()));
```

## animate_routes provide a cool and easy api to open dialog 

with animate_routes is very  easi to open and animate dialog with just one line of code
```dart
context.openDialog();

or 

context.openDialog(
  transition:TransitionDialog.left,
  title: 'My title',
  content: "My content"
);
```


Want to contribute to the project? We will be proud to highlight you as one of our collaborators. Here are some points where you can contribute and make animate_routes even better.

- Helping to add more features
- Offering PRs for code/tests.
- Including new functions.

Any contribution is welcome!