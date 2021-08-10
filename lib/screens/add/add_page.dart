import 'package:ecoecp/core/my_provider.dart';
import 'package:ecoecp/utils/constants.dart';
import 'package:ecoecp/utils/crud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:ecoecp/extension/ext.dart';

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);
  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int value = 0;

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .5,
            height: 50,
            color: Colors.red,
            child: const Center(
                child: Text(
              "Add Expense",
            )),
          ).inkTap(() {
            CRUDoperation.addData(int.parse(controller.text), isExp: true);
            controller.clear();
            context.read<MyProvider>().setVal(0);
          }),
          Container(
            width: MediaQuery.of(context).size.width * .5,
            height: 50,
            color: Colors.green,
            child: const Center(child: Text("Add Earning")),
          ).inkTap(() {
            CRUDoperation.addData(int.parse(controller.text));
            controller.clear();
            context.read<MyProvider>().setVal(0);
          }),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: .0,
        title: const Text("Add Data"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Provider.of<MyProvider>(context, listen: false).setVal(0);
            },
            icon: const Icon(CupertinoIcons.left_chevron)),
      ),
      body: RootWidget(controller: controller),
    );
  }
}

/// This is the root widget of earning
class RootWidget extends StatelessWidget {
  const RootWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 75,
        ),
        CustomInputField(
          controller: controller,
        ),
        const SizedBox(
          height: 75,
        ),
        Text("${context.watch<MyProvider>().val}",
            textScaleFactor: 2.3,
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    onChanged(var i) {
      if (i == "0" || i == "" || i == null) {
        context.read<MyProvider>().setVal(0);
      } else {
        context.read<MyProvider>().setVal(int.parse(i));
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: cardColor,
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            onChanged: (i) {
              onChanged(i);
            },
            cursorColor: Colors.amber,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration:
                const InputDecoration(border: InputBorder.none, hintText: "0"),
          ),
        ),
      ),
    );
  }
}
