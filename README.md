## Features

A safe way to call `setState` without having to worry about `mounted`.

Don't use this to get around the Flutter framework. Only use this if for example you are doing 
async stuff and can't use `FutureBuilder` or something similar.

## Usage

Add `MountedState` or  `MountedStateOverride` like any other mixin.

```dart
class _MyHomePageState extends State<MyHomePage> with MountedState, MountedStateOverride
```

`MountedState` adds `setMountedState` which you can use instead of `setState`.

`MountedStateOverride` will override `setState`.


Both always check if the widget is `mounted` before calling `setState`.
