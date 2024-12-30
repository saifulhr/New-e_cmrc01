import 'package:flutter/material.dart';

class LovePage extends StatefulWidget {
  const LovePage({super.key});

  @override
  State<LovePage> createState() => _LovePageState();
}

class _LovePageState extends State<LovePage> {
  @override
  Widget build(BuildContext context) {
    return const  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Favorites', style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700
        ),),)
      ],
    );
  }
}