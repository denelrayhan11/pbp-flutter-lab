import 'package:flutter/material.dart';
import 'package:counter_7/page/forms.dart';
import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist.dart';


class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('List Menu'),
            
          ),
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            leading: Icon(Icons.exit_to_app_outlined),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Form Budget'),
            leading: Icon(Icons.folder),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Show Budget'),
            leading: Icon(Icons.data_object),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            leading: Icon(Icons.data_object),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}