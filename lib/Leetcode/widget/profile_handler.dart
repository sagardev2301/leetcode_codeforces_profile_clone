import 'package:flutter/material.dart';

class ProfileHandler extends StatelessWidget {
  const ProfileHandler({
    Key? key,
    required this.text,
    required this.place,
  }) : super(key: key);
  final String text;
  final dynamic place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 140,
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            place.toStringAsFixed(0),
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          )
        ],
      ),
    );
  }
}
