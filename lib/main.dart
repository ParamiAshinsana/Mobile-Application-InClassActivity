import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this in pubspec.yaml

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 247, 247), // background color
      body: Center(
        child: Container(
          width: 320,
          height: 500,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.teal,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1502685104226-ee32379fefbe',
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lucy Hazel',
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(221, 250, 248, 248),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF4F2F2),
                  prefixIcon: const Icon(Icons.phone, color: Colors.teal),
                  hintText: '+94 908 890 90',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF4F2F2),
                  prefixIcon: const Icon(Icons.email, color: Colors.teal),
                  hintText: 'lucy@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}