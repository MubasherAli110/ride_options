
import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  final String gender;

  const GenderContainer({super.key, 
    required this.gender,
  });

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  bool selected = false;
  Color selectedColor = Colors.yellow;
  Color unselectedColor = const Color(0xff290D4A);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        height: 50,
        width: 150,
        color: selected ? selectedColor : unselectedColor,
        child: Center(
          child: Text(
            widget.gender,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}