import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PersonKort(),
    );
  }
}

class PersonKort extends StatelessWidget {
  const PersonKort({super.key});

  // function to open links :D
  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Error Could not open $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text("Personal Card"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/ludwig.jpg'),
            ),
            const SizedBox(height: 20),

            Text(
              'Ludwig Envall',
              style: GoogleFonts.cagliostro(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              'Data Analyst/Statistician',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 20),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10),
                        Text('Email: ludwigenv@gmail.com'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 10),
                        Text('Phone: +46 70 734 29 94'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(width: 10),
                        Text('Location: Linköping University'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
