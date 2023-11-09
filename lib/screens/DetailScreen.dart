
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taller1parcial2/model/backend.dart';
import 'package:taller1parcial2/model/email.dart';

class DetailScreen extends StatelessWidget {
  final Email email;

  const DetailScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    Backend().markEmailAsRead(email.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            'From: ${email.from}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16), 

              Text(
              email.subject,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

             Text(
              email.dateTime.toString(),
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 156, 27, 124),
              ),
            ),

            const SizedBox(height: 16), 
            Text(
              email.body,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}