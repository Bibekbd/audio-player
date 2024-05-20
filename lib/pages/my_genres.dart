import 'package:flutter/material.dart';

class MyGenres extends StatelessWidget {
  final String imageLink;
  final String title;
  final int totalAlbums;
  final int totalSongs;
  const MyGenres(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.totalAlbums,
      required this.totalSongs});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.network(imageLink),
        title: Text(title),
        subtitle: Text(
            "${totalAlbums > 1 ? "$totalAlbums albums" : "$totalAlbums album"} • ${totalSongs > 1 ? "$totalSongs songs" : "$totalSongs song"}",
            style: TextStyle(color: Theme.of(context).colorScheme.tertiary)),
        trailing: const Icon(Icons.more_vert),
        titleTextStyle: Theme.of(context).textTheme.bodyMedium,
        subtitleTextStyle: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
