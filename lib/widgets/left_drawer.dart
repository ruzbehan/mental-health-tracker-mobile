import 'package:flutter/material.dart';
import 'package:mental_health_tracker/menu.dart';
import 'package:mental_health_tracker/moodentry_form.dart'; // Impor halaman MoodEntryFormPage

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              children: [
                const Text(
                  'Mental Health Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                const Text(
                  "Ayo jaga kesehatan mentalmu setiap hari disini!",
                  textAlign: TextAlign.center, // Gaya teks dengan center alignment
                  style: TextStyle(
                    fontSize: 15, // Ukuran font 15
                    color: Colors.white, // Warna putih
                    fontWeight: FontWeight.normal, // Weight biasa
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>  MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Mood'),
            onTap: () {
              // Routing ke MoodEntryFormPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  MoodEntryFormPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
