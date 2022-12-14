import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomscanner/widgets/bottom_nav_bar.dart';
import 'widgets/page_options.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomNavigationBarProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TomScanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TomScanner(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TomScanner extends StatelessWidget {
  const TomScanner({super.key});
  @override
  Widget build(BuildContext context) {
    PageOptions options = PageOptions();
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 233, 215, 215),
      body: options.widgetOptions.elementAt(provider.getCurrentIndex),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
