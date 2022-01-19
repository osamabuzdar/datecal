import 'package:flutter/cupertino.dart';

class SelectedDateController with ChangeNotifier {
  String? _firstDate;
  String? _secondDate;

  String? get firstDate => _firstDate;
  String? get secondDate => _secondDate;

  void setFirstDate({enterfirstDate}) {
    _firstDate = enterfirstDate;
    notifyListeners();
  }

  void setSecondDate({enterSecondDate}) {
    _secondDate = enterSecondDate;
    notifyListeners();
  }
}
