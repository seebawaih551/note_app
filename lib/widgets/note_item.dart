import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 0, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 246, 197, 106),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Build your carrer with Majed Alqaddi',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 20)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              iconSize: 30,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('May21, 2021', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
