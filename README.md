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

AnimatedRoute is a minimalist library to provider some cool transition animation when you navigate between the screens ,also provide some shorcuts to navigate easily and you can open the dialog in just three lines of code . 

## Features

AnimatedRoute isn't a route manger itself is just a hack of productivy .
AnimatedRoute allow you to open snackbar, open bottomSheet and dialog easily with less boilerplate .
TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

# Installing

Add Get to your pubspec.yaml file:

```yaml
dependencies:
  animate_routes:
```

Import get in files that it will be used:

```dart
import 'package:animate_routes/animate_routes.dart';

## Usage



```dart
context.go(AnimatedRoute(transition:Transition.downToUp,screen:Home()))
or 
Navigator.of(context).push(AnimatedRoute(transition:Transition.downToUp,screen:Home()))
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
