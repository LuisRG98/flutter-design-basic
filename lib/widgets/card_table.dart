import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.indigoAccent,
              icon: Icons.emoji_transportation,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.red,
              icon: Icons.access_time,
              text: 'Time',
            ),
            _SingleCard(
              color: Colors.yellow,
              icon: Icons.wb_sunny_outlined,
              text: 'Weather',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.green,
              icon: Icons.account_balance_outlined,
              text: 'Money',
            ),
            _SingleCard(
              color: Colors.grey,
              icon: Icons.handshake_outlined,
              text: 'Contracts',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.cable,
              text: 'Conection',
            ),
            _SingleCard(
              color: Colors.brown,
              icon: Icons.stadium_outlined,
              text: 'Score',
            ),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(text,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
