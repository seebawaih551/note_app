import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostumSearchIcon extends StatelessWidget {
  const CostumSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: const Center(
        child: Icon(Icons.search),
      ),
    );
  }
}
