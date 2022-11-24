// To parse this JSON data, do
//
//     final mywatchlist = mywatchlistFromJson(jsonString);

import 'dart:convert';

List<Mywatchlist> mywatchlistFromJson(String str) => List<Mywatchlist>.from(json.decode(str).map((x) => Mywatchlist.fromJson(x)));

String mywatchlistToJson(List<Mywatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlist {
    Mywatchlist({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model model;
    int pk;
    Fields fields;

    factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.filmWatched,
        required this.filmTittle,
        required this.filmRating,
        required this.filmReleaseDate,
        required this.filmReview,
    });

    FilmWatched filmWatched;
    String filmTittle;
    String filmRating;
    String filmReleaseDate;
    String filmReview;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        filmWatched: filmWatchedValues.map[json["film_watched"]]!,
        filmTittle: json["film_tittle"],
        filmRating: json["film_rating"],
        filmReleaseDate: json["film_release_date"],
        filmReview: json["film_review"],
    );

    Map<String, dynamic> toJson() => {
        "film_watched": filmWatchedValues.reverse[filmWatched],
        "film_tittle": filmTittle,
        "film_rating": filmRating,
        "film_release_date": filmReleaseDate,
        "film_review": filmReview,
    };
}

enum FilmWatched { SUDAH, BELUM }

final filmWatchedValues = EnumValues({
    "Belum": FilmWatched.BELUM,
    "Sudah": FilmWatched.SUDAH
});

enum Model { MYWATCHLIST_LISTFILM }

final modelValues = EnumValues({
    "mywatchlist.listfilm": Model.MYWATCHLIST_LISTFILM
});

class EnumValues<T> {
    late Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
