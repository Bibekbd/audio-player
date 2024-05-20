import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/my_album.dart';
import 'package:myapp/pages/my_artists.dart';
import 'package:myapp/pages/my_genres.dart';
import 'package:myapp/pages/my_playlist.dart';
import 'package:myapp/pages/my_setting.dart';
import 'package:myapp/pages/my_song.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> data = [
      {
        "iconData":
            IconData(Icons.search.codePoint, fontFamily: 'MaterialIcons'),
        "iconName": "Search",
      },
      {
        "iconData":
            IconData(Icons.filter.codePoint, fontFamily: 'MaterialIcons'),
        "iconName": "Filter",
      },
      {
        "iconData":
            IconData(Icons.more_vert.codePoint, fontFamily: 'MaterialIcons'),
        "iconName": "More",
      }
    ];
    return DefaultTabController(
        initialIndex: 2,
        length: 5,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: data[0]["iconData"],
                  tooltip: data[0]["iconName"],
                ),
                IconButton(
                  onPressed: () {},
                  icon: data[1]["iconData"],
                  tooltip: data[1]["iconName"],
                ),
                PopupMenuButton(
                    icon: data[2]["iconData"],
                    tooltip: data[2]["iconName"],
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: const Text("Settings"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MySetting()),
                              );
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("About"),
                            onTap: () {
                              // Handle option 2 selection
                            },
                          )
                        ])
              ],
              title: const Text("Music"),
              bottom: const TabBar(
                isScrollable: true,
                dragStartBehavior: DragStartBehavior.start,
                tabs: [
                  Tab(text: 'Song'),
                  Tab(text: "Albums"),
                  Tab(text: "Artists"),
                  Tab(text: "Genres"),
                  Tab(text: "Playlists")
                ],
              )),
          body: const TabBarView(
            children: [
              MySong(
                  imageLink:
                      "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/92/9f/69/929f69f1-9977-3a44-d674-11f70c852d1b/24UMGIM36186.rgb.jpg/592x592bb.webp",
                  title: "Swag",
                  subtitle: "Miyauchi"),
              MyAlbum(
                  imageLink:
                      "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/92/9f/69/929f69f1-9977-3a44-d674-11f70c852d1b/24UMGIM36186.rgb.jpg/592x592bb.webp",
                  title: "6 case",
                  subtitle: "Yourness"),
              MyArtists(
                imageLink:
                    "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/92/9f/69/929f69f1-9977-3a44-d674-11f70c852d1b/24UMGIM36186.rgb.jpg/592x592bb.webp",
                title: '6 case',
                totalAlbums: 5,
                totalSongs: 2,
              ),
              MyGenres(
                imageLink:
                    "https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/92/9f/69/929f69f1-9977-3a44-d674-11f70c852d1b/24UMGIM36186.rgb.jpg/592x592bb.webp",
                title: '6 case',
                totalSongs: 1,
                totalAlbums: 1,
              ),
              MyPlaylist()
            ],
          ),
        ));
  }
}
