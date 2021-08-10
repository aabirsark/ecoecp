import 'package:ecoecp/core/my_provider.dart';
import 'package:ecoecp/model/hive_data_model.dart';
import 'package:ecoecp/screens/home/home.dart';
import 'package:ecoecp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Hive.initFlutter();
  Hive.registerAdapter<EcoEcpData>(EcoEcpDataAdapter());
  Hive.openBox<EcoEcpData>(boxName);

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => MyProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EcoEcp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          brightness: Brightness.dark),
      home: const Home(),
    );
  }
}
