import 'package:animate_routes/animate_routes.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Works"),
      ),
      body: Center(child: ElevatedButton(
        onPressed: ()=>context.back(),
        child: const Text("Go back home"),
      ),),
    );
  }
}