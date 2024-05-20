import 'package:flutter/material.dart';

class MyAlbum extends StatelessWidget {
  final String imageLink;
  final String title;
  final String subtitle;

  const MyAlbum(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.network(imageLink),
        title: Text(title),
        subtitle: Text(subtitle,
            style: TextStyle(color: Theme.of(context).colorScheme.tertiary)),
        trailing: const Icon(Icons.more_vert),
        titleTextStyle: Theme.of(context).textTheme.bodyMedium,
        subtitleTextStyle: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
