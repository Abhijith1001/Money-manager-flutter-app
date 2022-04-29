import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:money_manager_flutter/models/category/category_model.dart';
import 'package:money_manager_flutter/screens/home/Screen_home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

if(Hive.isAdapterRegistered(CategoryTypeAdapter().typeId))
  {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  

  if(Hive.isAdapterRegistered(CategoryModelAdapter().typeId))
  {
    Hive.registerAdapter(CategoryModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenHome()
    );
  }
}

