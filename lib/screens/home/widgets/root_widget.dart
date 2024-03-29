import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/screens/home/widgets/savings_card.dart';
import 'package:ecoecp/screens/home/widgets/transactions_list.dart';
import 'package:ecoecp/utils/boxes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeRootWidget extends StatelessWidget {
  const HomeRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<EcoEcpData>>(
        valueListenable: Boxes.getBox().listenable(),
        builder: (context, box, _) {
          List<EcoEcpData> data =
              box.values.cast<EcoEcpData>().toList().reversed.toList();
          return data.isEmpty
              ? const Center(
                  child: Text("No Data"),
                )
              : Column(
                  children: [
                    SavingsCard(ecoList: data),
                    Expanded(
                        child: TransactionListView(
                      list: data,
                    ))
                  ],
                );
        });
  }
}
