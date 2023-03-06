import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:moviez_streaming/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Moviez',
              style: blueTextStyle.copyWith(
                fontSize: 28,
                fontWeight: black,
              ),
            ),
            Text(
              'Watch much easier',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Ionicons.search_outline)),
        ],
      ),
    );
  }
}
