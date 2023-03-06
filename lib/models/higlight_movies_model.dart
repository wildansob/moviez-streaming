class HighlightMoviesModel {
  final String titleMovie;
  final String image;
  final String genre;
  final String ratingImage;

  HighlightMoviesModel(
      {required this.titleMovie,
      required this.image,
      required this.genre,
      required this.ratingImage});
}

List<HighlightMoviesModel> highlightMovies = [
  HighlightMoviesModel(
      titleMovie: "John Wick 4",
      image: 'assets/img_slider1.png',
      genre: "Action, Crime",
      ratingImage: 'assets/ic_5rate.png'),
  HighlightMoviesModel(
      titleMovie: "Bohemian",
      image: 'assets/img_slider2.png',
      genre: "Documentary",
      ratingImage: 'assets/ic_3rateright.png'),
];
