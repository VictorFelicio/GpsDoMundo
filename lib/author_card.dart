import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: GpsDoMundoTheme.lightTextTheme.headline2,
                    ),
                    Text(
                      title,
                      style: GpsDoMundoTheme.lightTextTheme.headline3,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.grey[400],
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text('Favorite Pressed'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
