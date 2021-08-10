import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/utils/constants.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<EcoEcpData> getBox() => Hive.box<EcoEcpData>(boxName);
}
