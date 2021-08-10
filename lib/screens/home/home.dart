import 'package:ecoecp/screens/add/add_page.dart';
import 'package:ecoecp/screens/home/widgets/root_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoEcp"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AddData()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: const HomeRootWidget(),
    );
  }
}
