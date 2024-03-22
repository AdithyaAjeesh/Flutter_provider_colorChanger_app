import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_logical_question/controller/provider.dart';
import 'package:provider_logical_question/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ColorProvider(),
        )
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
