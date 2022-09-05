import 'package:flutter/material.dart';

import 'reward_receipt_page.dart';

class EvaluationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Evaluation"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("報酬を受け取る"),
          onPressed: () {
            // （1） 指定した画面に遷移する
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    // （2） 実際に表示するページ(ウィジェット)を指定する
                    builder: (context) => RewardReceiptPage()));
          },
        ),
      ),
    );
  }
}
