import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, 
      title: 'My Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            
            // Avatar and Checkmark Stack
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: const [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    // Pulls the image from your local assets folder
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Divider Line
            const Divider(
              color: Colors.black,
              thickness: 1.2,
            ),
            const SizedBox(height: 20),
            
            // Name Section
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Diluka',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            
            // Email Section
            const Text(
              'Email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.email, size: 20),
                SizedBox(width: 8),
                Text(
                  'diluka.w@nsbm.ac.lk',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Points Section
            const Text(
              'Points',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.star, size: 20),
                SizedBox(width: 8),
                Text(
                  '0',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
      
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}