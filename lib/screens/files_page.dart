import 'package:flutter/material.dart';

class FilesPage extends StatefulWidget {
  const FilesPage({super.key});

  @override
  State<FilesPage> createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Text(
        'Files Page',
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
