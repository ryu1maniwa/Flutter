import 'package:flutter/material.dart';

class VehicleRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VehicleRegistration"),
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
