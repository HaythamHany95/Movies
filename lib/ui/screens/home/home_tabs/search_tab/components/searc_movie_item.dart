import 'package:flutter/material.dart';

class SearchMovieItem extends StatelessWidget {
  const SearchMovieItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Image.network(
                'https://img.freepik.com/free-photo/view-3d-cinema-elements_23-2150720822.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1708300800&semt=ais',
                fit: BoxFit.fill,
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Movie Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Movie Date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Movie Actors',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
