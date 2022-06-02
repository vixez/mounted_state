library mounted_state;

import 'package:flutter/widgets.dart';

/// Adds [setMountedState] which checks if [mounted] before calling [setState].
mixin MountedState<T extends StatefulWidget> on State<T> {
  void setMountedState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}


/// Overrides [setState] and will always check if [mounted] before calling
/// the actual [setState].
mixin MountedStateOverride<T extends StatefulWidget> on State<T> {
  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}

