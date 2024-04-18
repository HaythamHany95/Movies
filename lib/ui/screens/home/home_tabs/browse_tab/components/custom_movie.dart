import 'package:flutter/material.dart';

class CustomMovie extends StatelessWidget {
  const CustomMovie({
    super.key, required this.genre, required this.id,
  });

  final String genre;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/03/john-wick-movies-ranked-1.jpg'),
            fit: BoxFit.fill),
      ),
      child:  Center(
        child: Text(
          genre,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
