import 'package:flutter/foundation.dart';

// All the counter's DATA and LOGIC lives here instead of in the widget.
// ChangeNotifier gives us notifyListeners() — the Provider equivalent
// of setState(), but it can notify widgets anywhere in the app, not
// just the one State class that owns the variable.
class CounterProvider extends ChangeNotifier {
  int _count = 0;

  // Public getter — the UI reads the count through this, never _count directly.
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // tells every listening widget to rebuild
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}