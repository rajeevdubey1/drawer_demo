import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('Service Page', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
