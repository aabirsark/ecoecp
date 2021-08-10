import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/screens/home/widgets/savings_card.dart';
import 'package:ecoecp/screens/home/widgets/transactions_list.dart';
import 'package:ecoecp/utils/boxes.dart';
import 'package:ecoecp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeRootWidget extends StatelessWidget {
  const HomeRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SavingsCard(),
        Expanded(
          child: ValueListenableBuilder<Box<EcoEcpData>>(
              valueListenable: Boxes.getBox().listenable(),
              builder: (ctx, box, _) {
                List<EcoEcpData> data =
                    box.values.cast<EcoEcpData>().toList().reversed.toList();
                return TransactionListView(list: data);
              }),
        )
      ],
    );
  }
}
