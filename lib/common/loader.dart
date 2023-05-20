import 'package:flutter/material.dart';

class LoaderCircular extends StatelessWidget {
  const LoaderCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
