class FromDisneyModel {
  final String titleMovie;
  final String image;
  final String genre;
  final String ratingImage;

  FromDisneyModel(
      {required this.titleMovie,
      required this.image,
      required this.genre,
      required this.ratingImage});
}

List<FromDisneyModel> fromDisney = [
  FromDisneyModel(
      titleMovie: "Mulan Session",
      image: 'assets/img_disney1.png',
      genre: "History, War",
      ratingImage: 'assets/ic_3rate.png'),
  FromDisneyModel(
      titleMovie: "Beauty & Beast",
      image: 'assets/img_disney2.png',
      genre: "Sci-Fiction",
      ratingImage: 'assets/ic_5rate.png'),
];
