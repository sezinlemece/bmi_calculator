import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatefulWidget {
  const IconContent({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  State<IconContent> createState() => _IconContentState();
}

class _IconContentState extends State<IconContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.icon, size: 80.0),
        const SizedBox(
          height: 15.0,
        ),
        Text(widget.label, style: kLabelTextStyle)
      ],
    );
  }
}
