import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNavController extends Notifier<int> {
  @override
  int build() => 0;

  void changeItem(int index) {
    state = index;
  }
  void changeToCategory() {
    state = 1;
  }
  void backToHome() {
    state = 0;
  }
}

final mainNavProvider =
NotifierProvider<MainNavController, int>(
  MainNavController.new,
);
