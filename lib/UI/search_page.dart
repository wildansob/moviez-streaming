import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/search_result_model.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:moviez_streaming/widgets/search_result.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<SearchResultModel> displayList = List.from(searchResult);

// Search Feature
  void updateList(String value) {
    setState(() {
      searchResult = searchResult
          .where((element) =>
              element.titleMovie.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 38, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: TextField(
                  onChanged: (value) => updateList(value),
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
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 220,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: blueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text(
                      "Sugested Movie",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
