import 'package:ecoecp/model/hive_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({Key? key, required this.list}) : super(key: key);

  final List<EcoEcpData> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (ctx, index) {
          EcoEcpData data = list.elementAt(index);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: ListTile(
                  title: Text(
                    "${data.isExp ? "-" : "+"}${data.price}",
                    style: TextStyle(
                        color: data.isExp ? Colors.red : Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    DateFormat("dd/MM/yy").format(data.dateTime),
                    style: const TextStyle(fontSize: 10, color: Colors.white30),
                  ),
                  leading: CircleAvatar(
                      radius: 10,
                      backgroundColor: data.isExp ? Colors.red : Colors.green),
                )),
          );
        });
  }
}
