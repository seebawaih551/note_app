import 'package:flutter/material.dart';

import 'costum_search_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CostumSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
