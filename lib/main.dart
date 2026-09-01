import 'package:flutter/material.dart';

void main() {
  runApp(InstaliteApp());
}

class InstaliteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instalite',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instalite', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Card(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('U${i+1}')),
                    title: Text('user_${i+1}'),
                  ),
                  Container(
                    height: 300,
                    color: Colors.grey[300],
                    child: Center(child: Icon(Icons.image, size: 80)),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite_border),
                    title: Text('Liked by user_${i+2} and others'),
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
