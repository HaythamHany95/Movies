import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/utils/app_theme.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({super.key, required this.movieName,required this.movieImagePoster, required this.moviePublished, required this.movieRating, required this.movieRated});

  final String movieName;
  final String movieImagePoster;
  final String moviePublished;
  final String movieRating;
  final String movieRated;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 130.h,
      child: Card(
        elevation: 10,
        color: AppTheme.darkGreyColor,
        child: Column(
          children: [
            MoviePoster(
              /// TODO:Recomended Movie image
              imagePath: movieImagePoster,
              width: 120.w,
              height: 130.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: AppTheme.yellowColor,
                    ),
                    Text(
                      /// TODO:Recomended Movie Rating

                      movieRating,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
                Text(
                  /// TODO:Recomended Movie Title
                  movieName,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 14.sp),
                ),
                Text(
                  /// TODO:Recomended Movie Published

                  '$moviePublished $movieRated 2h 7m',
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 12.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
