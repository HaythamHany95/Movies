import 'package:flutter/material.dart';

class CustomMovie extends StatelessWidget {
  const CustomMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/03/john-wick-movies-ranked-1.jpg'),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
