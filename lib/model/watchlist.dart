import 'dart:convert';

List<WatchList> WatchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String WatchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList(
      {required this.film_tittle,
      required this.film_rating,
      required this.film_release_date,
      required this.film_watched,
      required this.film_review});

  String film_tittle;
  String film_rating;
  String film_release_date;
  String film_review;
  bool film_watched;

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        film_tittle: json["fields"]["film_tittle"],
        film_release_date: json["fields"]["film_release_date"],
        film_rating: json["fields"]["film_rating"],
        film_watched: json["fields"]["film_watched"],
        film_review: json["fields"]["film_review"],
      );

  Map<String, dynamic> toJson() => {
        "film_tittle": film_tittle,
        "film_release_date": film_release_date,
        "film_rating": film_rating,
        "film_review": film_review,
        "film_watched": film_watched,
      };
}
