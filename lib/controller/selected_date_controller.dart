import 'package:flutter/cupertino.dart';

class SelectedDateController with ChangeNotifier {
  String? _firstDate = 'Set First Date';
  String? _secondDate = 'Set Second Date';

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
