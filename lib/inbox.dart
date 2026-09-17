import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D1117),
        title: const Text(
          'Inbox',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(OctIcons.kebab_horizontal_24, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  _buildDropdownChip('Inbox'),
                  const SizedBox(width: 8),
                  _buildChip('Focused'),
                  const SizedBox(width: 8),
                  _buildChip('Unread'),
                  const SizedBox(width: 8),
                  _buildDropdownChip('Repository'),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Notification Banner Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF161B22),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF30363D)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xFFDA3633),
                        child: Icon(
                          OctIcons.bell_fill_24,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Icon(OctIcons.x_16, color: Color(0xFF8B949E), size: 16),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Never miss what\'s important to you.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Configure your Notification experience with push notifications, working hours, and swipe actions.',
                    style: TextStyle(
                      color: Color(0xFF8B949E),
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'CONFIGURE',
                      style: TextStyle(
                        color: Color(0xFF2F81F7),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Item 1
            _buildNotificationItem(
              icon: OctIcons.git_merge_24,
              iconColor: const Color(0xFFA371F7),
              repoPath: 'Coder240807 / super-mario #1',
              title: 'Basic game functionality complete',
              subtitleLeadingIcon: OctIcons.check_circle_fill_12,
              subtitleLeadingColor: const Color(0xFF238636),
              subtitle: 'Merged #1 into main.',
              time: '8d',
            ),
            const Divider(color: Color(0xFF21262D), height: 1),

            // Item 2
            _buildNotificationItem(
              icon: OctIcons.git_pull_request_24,
              iconColor: const Color(0xFF238636),
              repoPath: 'MonuChaudhary14 / docusaurus-2026 #16',
              title: 'Add personal profile doc and navbar link',
              subtitleLeadingIcon: OctIcons.triangle_up_16,
              subtitleLeadingColor: Colors.white,
              subtitle: '@Coder240807 is attempting to deploy',
              time: '16d',
            ),
            const Divider(color: Color(0xFF21262D), height: 1),

            // Item 3
            _buildNotificationItem(
              icon: OctIcons.git_merge_24,
              iconColor: const Color(0xFFA371F7),
              repoPath: 'dsc-akgec / Probation-Projects-2026 #2',
              title: 'Added project by Vigya Verma',
              subtitleLeadingIcon: OctIcons.check_circle_fill_12,
              subtitleLeadingColor: const Color(0xFF238636),
              subtitle: 'Merged #2 into main.',
              time: '17d',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF21262D),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF30363D)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(width: 4),
          const Icon(
            OctIcons.chevron_down_16,
            color: Color(0xFF8B949E),
            size: 14,
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF21262D),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF30363D)),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required Color iconColor,
    required String repoPath,
    required String title,
    required IconData subtitleLeadingIcon,
    required Color subtitleLeadingColor,
    required String subtitle,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        repoPath,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF8B949E),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFF8B949E),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      subtitleLeadingIcon,
                      color: subtitleLeadingColor,
                      size: 14,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        subtitle,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFF8B949E),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
