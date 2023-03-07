import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/search_result_model.dart';
import 'package:moviez_streaming/shared/theme.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      searchResult.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: SizedBox(
            width: double.maxFinite,
            height: 140,
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          searchResult[index].image,
                          height: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              searchResult[index].titleMovie,
                              style: blueTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: semibold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              searchResult[index].genre,
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: 98,
                              height: 18,
                              child:
                                  Image.asset(searchResult[index].ratingImage),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ));
  }
}
