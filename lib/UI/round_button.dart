import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  final String title;
  const Roundbutton({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10)   
        
      ),
      child: Center(child: Text(title),),
    );
  }
}
