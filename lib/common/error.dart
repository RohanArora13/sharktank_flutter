import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  const ErrorScreen({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(errorMessage),
      ),
    );
  }
}
