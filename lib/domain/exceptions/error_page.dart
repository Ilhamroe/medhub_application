import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Center(child: Text("Error Screen"),),
    ),
    body: Center(child: const Text("Error Screen",),),);
  }
}
