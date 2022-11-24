import 'package:flutter/cupertino.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';

class WatchListDetail extends StatelessWidget {
  final Mywatchlist data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: myDrawer(),
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Center(
              child: Text(data.fields.filmTittle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            Row(
              children: [
                Text("Release Date : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.fields.filmReleaseDate,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Rating : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.fields.filmRating.toString() + "/10",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Status : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                if (data.fields.filmWatched == FilmWatched.SUDAH)
                  Text("Watched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
                if (data.fields.filmWatched == FilmWatched.BELUM)
                  Text("Unwatched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ],
            ),
            Text(
              data.fields.filmReview,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}