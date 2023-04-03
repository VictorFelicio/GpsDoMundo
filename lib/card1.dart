import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'City';
  final String title = 'Paris';
  final String description = 'A cidade das luzes';
  final String tourist = 'João Felicio';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcdKUnKEL37yWYaNUyrF2eULerHvLDqgusODaJaeE5wpteTuvSaZGy0zAH-CAz44zAUE&usqp=CAU'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        children: [
          Text(category, style: GpsDoMundoTheme.darkTextTheme.bodyText1),
          Positioned(
            top: 20,
            child: Text(
              title,
              style: GpsDoMundoTheme.darkTextTheme.headline2,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: Text(
              description,
              style: GpsDoMundoTheme.darkTextTheme.bodyText1,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              tourist,
              style: GpsDoMundoTheme.darkTextTheme.bodyText1,
            ),
          ),
        ],
      ),
    ));
  }
}
