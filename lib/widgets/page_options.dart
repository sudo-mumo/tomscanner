import 'package:flutter/material.dart';
import 'package:tomscanner/screens/account_page.dart';
import 'package:tomscanner/screens/files_page.dart';
import 'package:tomscanner/screens/home_page.dart';
import 'package:tomscanner/screens/tools_page.dart';

class PageOptions {
  List<Widget> widgetOptions = <Widget>[
    const HomePage(),
    const FilesPage(),
    const ToolsPage(),
    const AccountPage(),
  ];
}
