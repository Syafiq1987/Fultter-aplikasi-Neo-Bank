// widget_test.dart
import 'package:flutter/material.dart';

class WidgetTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Test Page'),
      ),
      body: Center(
        child: Text("Ini adalah halaman widget test"),
      ),
    );
  }
}
