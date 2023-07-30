import 'package:flutter/material.dart';
import 'package:quran/screens/settings.dart';
import 'package:share_plus/share_plus.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/quran.png',
                  height: 80,
                ),
                const Text(
                  'Al Quran',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: const Text(
              'Share',
            ),
            onTap: () {
              Share.share('*Quran app*');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
