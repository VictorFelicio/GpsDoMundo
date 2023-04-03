import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://64.media.tumblr.com/6b5ae450e1a1340cd357f2ca45a5337b/tumblr_plc7zany0c1qgm86g_500.jpg'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(children: [
        const AuthorCard(
            authorName: 'John Doe',
            title: 'Software Enginner',
            imageProvider: NetworkImage(
                'https://media.gettyimages.com/id/1289461335/pt/foto/portrait-of-a-handsome-black-man.jpg?s=612x612&w=gi&k=20&c=Ihmu63fU4yBw2kOetEXMLUYMiYS7QUUukgUsImseAto=')),
        Expanded(
            child: Stack(children: [
          Positioned(
              bottom: 16,
              right: 16,
              child: Text('Paris',
                  style: GpsDoMundoTheme.lightTextTheme.headline1)),
          Positioned(
              bottom: 70,
              left: 16,
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Torre Eiffel',
                      style: GpsDoMundoTheme.lightTextTheme.headline1)))
        ]))
      ]),
    ));
  }
}
