import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/details/movie_details_screen.dart';

class MoviePoster extends StatefulWidget {
  final double? width;
  final double? height;
  final String? imagePath;

  const MoviePoster({
    super.key,
    this.height,
    this.width,
    required this.imagePath,
  });

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  bool isWathcList = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MovieDetailsScreen.routeName);
                },
                child: Image.asset(
                  // 'assets/images/movie_demo_image.png',
                  widget.imagePath ?? '', fit: BoxFit.fill,
                  width: widget.width,
                  height: widget.height,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                isWathcList = !isWathcList;
                setState(() {});
              },
              child: (isWathcList)
                  ? Image.asset('assets/images/added_icon.png')
                  : Image.asset('assets/images/bookmark_icon.png'),
            ),
          ],
        ),
      ],
    );
  }
}
