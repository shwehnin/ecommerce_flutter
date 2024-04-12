import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String text;

  const TabWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(text),
      ),
    );
  }
}
