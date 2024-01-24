import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBarsNotifier extends StateNotifier<int> {
  NavBarsNotifier() : super(0);

  void selectedPage(int index) {
    state = index;
  }

}

final navBarProvider =
StateNotifierProvider<NavBarsNotifier,int>((ref) => NavBarsNotifier());
