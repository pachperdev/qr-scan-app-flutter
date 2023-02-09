import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;
  String _selectedNameAppBar = 'Historial';

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    notifyListeners();
  }

  String get selectedNameAppBar {
    return _selectedNameAppBar;
  }

  set selectedNameAppBar(String nameAppBar) {
    _selectedNameAppBar = nameAppBar;
    notifyListeners();
  }
}
