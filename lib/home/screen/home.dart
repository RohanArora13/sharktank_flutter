import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharktank/episode/episode_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                alignment: Alignment.center,
                height: 80,
                fit: BoxFit.contain,
                "assets/shark_tank_logo.png",
              ),
            ),
            EpisodeScreen()
          ],
        ),
      ),
    );
  }
}
