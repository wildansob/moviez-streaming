class SearchResultModel {
  final String titleMovie;
  final String image;
  final String genre;
  final String ratingImage;

  SearchResultModel(
      {required this.titleMovie,
      required this.image,
      required this.genre,
      required this.ratingImage});
}

List<SearchResultModel> searchResult = [
  SearchResultModel(
      titleMovie: "The Dark II",
      image: 'assets/img_thedark2.png',
      genre: "Horror",
      ratingImage: 'assets/ic_4rate.png'),
  SearchResultModel(
      titleMovie: "The Dark Knight",
      image: 'assets/img_thedarkknight.png',
      genre: "Heroes",
      ratingImage: 'assets/ic_5rate.png'),
  SearchResultModel(
      titleMovie: "The Dark Tower",
      image: 'assets/img_thedarktower.png',
      genre: "Action",
      ratingImage: 'assets/ic_4rate.png'),
];
