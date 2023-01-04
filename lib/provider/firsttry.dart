

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final counterProvider =ChangeNotifierProvider((ref) => Counter());

class Counter extends ChangeNotifier{
  int number=0;
  void increment(){
     number++;
     notifyListeners();
  }

}