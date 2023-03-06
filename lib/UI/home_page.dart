import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:moviez_streaming/widgets/from_disney.dart';
import 'package:moviez_streaming/widgets/movies_highlight.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                fontWeight: regular,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              color: blueColor,
              onPressed: () {},
              icon: const Icon(Ionicons.search_outline)),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 30),
          const MoviesHighlight(),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 14),
            child: Text(
              "From Disney",
              style: blueTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const FromDisney(),
        ],
      ),
    );
  }
}
