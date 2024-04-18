import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/utils/app_theme.dart';
import 'package:movies/ui/utils/utils.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const String routeName = 'movie_details_screen';

  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dora and the lost city of gold'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 289.h,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/poster_demo_image.png',
                        height: 217.h,
                        width: 412.w,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: REdgeInsets.only(left: 20.w, top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Dora and the lost city of gold",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontSize: 20.sp),
                            ),
                            Text("2019 PG-13 2h 7m",
                                style: Theme.of(context).textTheme.titleSmall)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Utils.openWebPage(
                        'https://www.youtube.com/watch?v=ksj69JaBrAo');
                  },
                  child: Image.asset('assets/images/play_button.png'),
                ),
              ],
            ),
            Padding(
              padding: REdgeInsets.only(left: 20.w, top: 10.h),
              child: Row(
                children: [
                  MoviePoster(
                    imagePath: 'assets/images/movie_demo_image.png',
                    width: 129.w,
                    height: 199.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Text(
                            style: Theme.of(context).textTheme.titleSmall,
                            "Dora Marquez embarks on a mission with her monkey, Boots, and her friends to rescue her missing parents and solve the mystery of a fabled city of gold."),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: AppTheme.yellowColor,
                            size: 30.sp,
                          ),
                          Text(
                            /// TODO:Recommended Movie Rating

                            '7.7',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 150.w,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h),
              color: AppTheme.darkGreyColor,
              width: 456.w,
              height: 270.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, bottom: 10.h),
                    child: Text(
                      "More Like This",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
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
                                  imagePath:
                                      'assets/images/movie_demo_image.png',
                                  width: 120.w,
                                  height: 130.h,
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_rate_rounded,
                                          color: AppTheme.yellowColor,
                                        ),
                                        Text(
                                          /// TODO:Recomended Movie Rating

                                          '7.7',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      /// TODO:Recomended Movie Title
                                      'Dora and the lost dddd',
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(fontSize: 14.sp),
                                    ),
                                    Text(
                                      /// TODO:Recomended Movie Published

                                      '2019 PG-13 2h 7m',
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
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
