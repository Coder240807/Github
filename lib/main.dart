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
              radius: 14,
              backgroundColor: Colors.white,
              child: Text('H', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            _Section(title: 'My Work'),
            _Item(
              color: const Color(0xFF2EA44F),
              icon: OctIcons.issue_opened_24,
              label: 'Issues',
            ),
            _Item(
              color: const Color(0xFF1F6FEB),
              icon: OctIcons.git_pull_request_24,
              label: 'Pull request',
            ),
            _Item(
              color: const Color(0xFF8957E5),
              icon: OctIcons.comment_discussion_24,
              label: 'Discussions',
            ),
            _Item(
              color: const Color(0xFF6E7681),
              icon: OctIcons.project_24,
              label: 'Projects',
            ),
            _Item(
              color: Color(0xFF30363D),
              icon: OctIcons.repo_24,
              label: 'Top Repositories',
            ),
            _Item(
              color: const Color(0xFFDB6D28),
              icon: OctIcons.organization_24,
              label: 'Organizations',
            ),
            _Item(
              color: const Color(0xFFD4A72C),
              icon: OctIcons.star_24,
              label: 'Starred',
            ),
            const Divider(color: Color(0xFF21262D), height: 32),

            const Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Text(
                'Favourites',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: const Color(0xFF0D1117),
        selectedItemColor: const Color(0xFF2F81F7),
        unselectedItemColor: const Color(0xFF8B949E),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(OctIcons.home_24),
            activeIcon: Icon(OctIcons.home_fill_24),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(OctIcons.inbox_24),
            activeIcon: Icon(OctIcons.inbox_fill_24),
            label: 'Inbox',
          ),

          BottomNavigationBarItem(
            icon: Icon(OctIcons.telescope_24),
            activeIcon: Icon(OctIcons.telescope_fill_24),
            label: 'Explore',
          ),

          BottomNavigationBarItem(
            icon: Icon(OctIcons.copilot_24),
            label: 'Copilot',
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;

  const _Section({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const _Item({required this.color, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 16),
            Text(label, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
