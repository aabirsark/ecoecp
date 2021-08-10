import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/utils/conversion.dart';
import 'package:flutter/material.dart';

class SavingsCard extends StatelessWidget {
  SavingsCard({Key? key, required this.ecoList}) : super(key: key);

  List<EcoEcpData> ecoList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        height: 170,
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black38,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Savings",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              Conversion.saved(ecoList).toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            ExpSpenCard(
              ecoList: ecoList,
            )
          ],
        ),
      ),
    );
  }
}

class ExpSpenCard extends StatelessWidget {
  ExpSpenCard({
    Key? key,
    required this.ecoList,
  }) : super(key: key);

  List<EcoEcpData> ecoList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text(
              "Earned",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "+${Conversion.earn(ecoList)}",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
        Column(
          children: [
            const Text(
              "Spent",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "-${Conversion.exp(ecoList)}",
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
