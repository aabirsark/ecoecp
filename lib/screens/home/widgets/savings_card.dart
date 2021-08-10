import 'package:flutter/material.dart';

class SavingsCard extends StatelessWidget {
  const SavingsCard({Key? key}) : super(key: key);

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
          children: const [
            Text(
              "Savings",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "10000",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            ExpSpenCard()
          ],
        ),
      ),
    );
  }
}

class ExpSpenCard extends StatelessWidget {
  const ExpSpenCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text(
              "Earned",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+500",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              "Spent",
              style: TextStyle(fontSize: 12, color: Colors.white24),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "-500",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}