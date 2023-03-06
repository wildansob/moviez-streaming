import 'package:flutter/material.dart';
import 'package:moviez_streaming/models/higlight_movies_model.dart';
import 'package:moviez_streaming/shared/theme.dart';

class MoviesHighlight extends StatelessWidget {
  const MoviesHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 356,
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            highlightMovies[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  highlightMovies[index].titleMovie,
                                  style: blueTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: semibold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  highlightMovies[index].genre,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 98,
                              height: 18,
                              child: Image.asset(
                                  highlightMovies[index].ratingImage),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 0)),
          itemCount: highlightMovies.length),
    );
  }
}
