import 'package:flutter/material.dart';

class ToolsPage extends StatefulWidget {
  const ToolsPage({super.key});

  @override
  State<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends State<ToolsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Text(
        'Tools Page',
      ),
    );
  }
}
