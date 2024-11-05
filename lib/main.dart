import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/card_viewmodel.dart';
import 'views/content_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CardViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContentView(),
      ),
    );
  }
}
