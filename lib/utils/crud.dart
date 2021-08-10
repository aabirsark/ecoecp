import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/utils/boxes.dart';
import 'package:hive/hive.dart';

class CRUDoperation {
  static addData(int price, {bool isExp = false}) {
    final EcoEcpData data = EcoEcpData()
      ..price = price
      ..isExp = isExp;
    Box box = Boxes.getBox();
    box.add(data);
  }

  static delData(EcoEcpData data) {
    data.delete();
  }
}
