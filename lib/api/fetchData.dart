import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Mywatchlist>> fetchToDo() async {
  var url = Uri.parse('https://tokosipedi.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Mywatchlist> listWatch = [];
  for (var d in data) {
    if (d != null) {
      listWatch.add(Mywatchlist.fromJson(d));
    }
  }

  return listWatch;
}
