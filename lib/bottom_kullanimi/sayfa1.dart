import 'package:flutter/material.dart';

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Sayfa 1",style: TextStyle(fontSize: 30,color: Colors.black54),),);
  }
}
