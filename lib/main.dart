import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilScreen(),
    );
  }
}

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profil'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/foto_profil.jpeg'),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Ni Wayan Ristyani',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'NIM: 42230044',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                'Prodi: Teknologi Informasi',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Deskripsi Diri',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Saya adalah mahasiswa semester 5 dari angkatan 2022, saat ini saya sedang berkuliah di Universitas Pendidikan Nasional. Saya terlibat dalam organisasi di kampus yang memberi saya kesempatan untuk bertemu banyak orang. Saya belajar bagaimana cara berbicara di depan umum dan bekerja sama untuk mencapai tujuan bersama.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Kemampuan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Main Rafting'),
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text('Bermain Volly'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('Menari'),
            ),
          ],
        ),
      ),
    );
  }
}