import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'router/route_generator.dart';
import 'router/routing_variables.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discount App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PlusJakarta',
        textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1,
              fontSizeDelta: 2.0,
              fontFamily: 'PlusJakarta',
            ),
      ),
      initialRoute: Navigation.startup,
      // initialRoute: Navigation.invoicePage,
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: EasyLoading.init(),
    );
  }
}
