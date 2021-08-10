import 'package:hive/hive.dart';

part 'hive_data_model.g.dart';

@HiveType(typeId: 0)
class EcoEcpData extends HiveObject {
  /// Price is what user add for expense or earning
  @HiveField(0)
  int? price;

  /// `isExp` stands for the data is Expense Data or Earning...
  /// by defult it is set to `false`
  @HiveField(1)
  bool isExp = false;

  /// DateTime is always be taking the current time in db
  @HiveField(2)
  DateTime dateTime = DateTime.now();
}
