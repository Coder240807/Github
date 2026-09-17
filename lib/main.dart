import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

void main() {
  runApp(const GithubApp());
}

class GithubApp extends StatelessWidget {
  const GithubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D1117),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1117),
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(OctIcons.search_24)),
          IconButton(onPressed: () {}, icon: const Icon(OctIcons.sync_24)),
          IconButton(
            onPressed: () {},
            icon: const Icon(OctIcons.plus_circle_24),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12, left: 4),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Text('H', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
