import 'package:flutter/material.dart';

class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Bag', style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700
        ),),)
      ],
    );
  }
}