import 'package:flutter/material.dart';
import 'package:webtoon_app/screen/home_screen.dart';
import 'package:webtoon_app/service/api_service.dart';

void main() {
  apiService().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
