import 'package:flutter/material.dart';

class RewardReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("HomePageに遷移する"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
