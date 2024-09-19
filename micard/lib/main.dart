import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/avatar.jpg'), // Đảm bảo ảnh được thêm vào đường dẫn đúng
            ),
            const Text(
              'Your Name', // Thay bằng tên của bạn
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER', // Thay đổi chức danh phù hợp
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal[100],
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal,
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: const Text(
                  '+84 123 456 789', // Thay bằng số điện thoại của bạn
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: const Text(
                  'youremail@example.com', // Thay bằng email của bạn
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
