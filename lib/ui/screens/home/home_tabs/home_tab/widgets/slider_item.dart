import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/utils/utils.dart';

class SliderItem extends StatelessWidget {
  const SliderItem ({super.key, required this.movieName, required this.movieImageBackground, required this.movieImagePoster, required this.moviePublished, required this.id});

  final String movieName;
  final String movieImageBackground;
  final String movieImagePoster;
  final String moviePublished;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.network(
              /// TODO:Popular Movie image
              movieImageBackground,
              height: 217.h,
              width: 412.w,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    /// TODO:Popular Movie Name
                    movieName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 15.sp),
                  ),
                  Text(

                    /// TODO:Popular Movie Published
                      moviePublished,
                      style:
                      Theme.of(context).textTheme.titleSmall)
                ],
              ),
            )
          ],
        ),
        InkWell(
          onTap: () {
            /// TODO: Open web page 'YouTube
            Utils.openWebPage(
                'https://www.youtube.com/watch?v=ksj69JaBrAo');
          },
          child: Image.asset('assets/images/play_button.png'),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14.w, top: 70.h),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: MoviePoster(
              /// TODO:Popular Movie image
              imagePath: movieImagePoster,
              width: 129.w,
              height: 199.h,
              id: id,
              title: movieName,
              year: moviePublished,
            ),
          ),
        ),
      ],
    );
  }
}
