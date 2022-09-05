import 'package:flutter/material.dart';

import 'schedule_page.dart';
import 'vehicle_registration_page.dart';
import 'evaluation_page.dart';
import 'applicant_list_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("Schedule Pageに遷移する"),
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // （2） 実際に表示するページ(ウィジェット)を指定する
                        builder: (context) => SchedulePage()));
              },
            ),
            TextButton(
              child: const Text("Vehicle Registration Pageに遷移する"),
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // （2） 実際に表示するページ(ウィジェット)を指定する
                        builder: (context) => VehicleRegistrationPage()));
              },
            ),
            TextButton(
              child: const Text("Evaluation Pageに遷移する"),
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // （2） 実際に表示するページ(ウィジェット)を指定する
                        builder: (context) => EvaluationPage()));
              },
            ),
            TextButton(
              child: const Text("Applicant List Pageに遷移する"),
              onPressed: () {
                // （1） 指定した画面に遷移する
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // （2） 実際に表示するページ(ウィジェット)を指定する
                        builder: (context) => ApplicantListPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
