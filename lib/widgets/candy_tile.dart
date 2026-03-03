import 'package:flutter/material.dart';

class CandyTile extends StatelessWidget {
  final int index;
  const CandyTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: _getColorForIndex(index),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Color _getColorForIndex(int index) {
    const colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.yellow,
    ];
    return colors[index % colors.length];
  }
}
