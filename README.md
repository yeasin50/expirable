# expirable_widget

`expirable_widget` was created to replace a widget after specific [DateTime][dateTime].

One of my mediator wanted this, so made as package 😅.

## Features

- disable widget after a specific `DateTime`

## Getting started

add package on your `pubspec.yaml`

```yaml
dependencies:
  expirable_widget:
    git: https://github.com/yeasin50/expirable_widget.git
    ref: master

  flutter:
    sdk: flutter
```

## Usage

Import the package

```dart
import 'package:expirable_widget/expirable_widget.dart';
```

and use like

```dart
ExpirableWidget(
      skipAssert: true, // use for preview on debug mode
      expireDate: DateTime(2023,10,10),
      child: const MainApp(),
    ),
```

> Don't use `DateTime.now()` directly, this widget isn't made for this

You can check the [example][example] directory.

[dateTime]: https://api.dart.dev/stable/3.0.6/dart-core/DateTime-class.html
[example]: /example
