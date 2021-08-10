import 'package:ecoecp/model/hive_data_model.dart';

class Conversion {
  /// This func return expense by taking db val{Data}
  static int exp(List<EcoEcpData> data) {
    if (data.isEmpty) return 0;
    List<EcoEcpData> sortedList =
        data.where((element) => element.isExp).toList();
    int val = 0;
    for (var i in sortedList) {
      val += i.price ?? 0;
    }
    return val;
  }

  /// This func return earn by taking db val{Data}
  static int earn(List<EcoEcpData> data) {
    if (data.isEmpty) return 0;
    List<EcoEcpData> sortedList =
        data.where((element) => !element.isExp).toList();
    int val = 0;
    for (var i in sortedList) {
      val += i.price ?? 0;
    }
    return val;
  }

  /// This Func gonna return the value of Saved money
  static int saved(List<EcoEcpData> data) {
    if (data.isEmpty) return 0;
    int val = earn(data) - exp(data);
    return val;
  }
}
