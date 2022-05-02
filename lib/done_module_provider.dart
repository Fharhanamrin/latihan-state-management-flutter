import 'package:flutter/foundation.dart';

class DoneModuleProvider extends ChangeNotifier {
  List<String> _doneModuleList = [];
  List<String> _detaildoneModuleList = [];

  List<String> get doneModuleList => _doneModuleList;
  List<String> get detaildoneModuleList => _detaildoneModuleList;

  void complete(String moduleName) {
    _doneModuleList.add(moduleName);
    _detaildoneModuleList.add(moduleName);
    notifyListeners();
  }

  void removeOke(String moduleName) {
    _doneModuleList.remove(moduleName);
    _detaildoneModuleList.remove(moduleName);
    notifyListeners();
  }

  void searchOke(String moduleName) {
    if (moduleName == "" || moduleName == null) {
      _detaildoneModuleList.add(doneModuleList.toString());
      notifyListeners();
    } else {
      var data = _detaildoneModuleList.indexOf(moduleName);
      var setulang = _detaildoneModuleList[data];
      _detaildoneModuleList.clear();
      _detaildoneModuleList.add(setulang);
      notifyListeners();
      print(data);
      print(detaildoneModuleList);
    }
    // print(moduleName);
  }
}
