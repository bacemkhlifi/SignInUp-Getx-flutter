import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const  Icon(Icons.logout),
              title:const Text('Logout'),
              onTap: () {
                // Navigate back to login screen
                Get.offAllNamed('/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
