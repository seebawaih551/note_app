import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'costum_search_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CostumSearchIcon()
      ],
    );
  }
}
