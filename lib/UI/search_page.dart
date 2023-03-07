import 'package:flutter/material.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:moviez_streaming/widgets/search_result.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 38, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: TextField(
                  style: blueTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    hintText: "eg: The Dark Knight",
                    prefixIcon: Icon(
                      size: 30,
                      Icons.search,
                      color: blueColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                    style: blueTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: black,
                    ),
                    "Search Result (3)"),
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchResult(),
            ],
          ),
        ),
      ),
    );
  }
}
