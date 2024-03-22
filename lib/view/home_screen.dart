import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_logical_question/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: provider.backgroundColor,
              radius: 60,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                provider.changeColor();
              },
              child: const Text('Change Color'),
            )
          ],
        ),
      ),
    );
  }
}
