import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/utils/app_theme.dart';
import 'package:movies/ui/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

List<String> moviesPosters = [
  'assets/images/poster_demo_image.png',
  'assets/images/poster_demo_image.png',
  'assets/images/poster_demo_image.png'
];

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel, HomeScreenStates>(
      builder: (BuildContext context, HomeScreenStates<dynamic> state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    height: 300.h,
                    autoPlayInterval: Duration(seconds: 10),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000)),
                items: moviesPosters.map((url) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            /// TODO:Popular Movie image

                            'assets/images/poster_demo_image.png',
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
                                  "Dora and the lost city of gold",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontSize: 15.sp),
                                ),
                                Text(

                                    /// TODO:Popular Movie Published
                                    "2019 PG-13 2h 7m",
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
                            imagePath: 'assets/images/movie_demo_image.png',
                            width: 129.w,
                            height: 199.h,
                          ),
                        ),
                      )
                    ],
                  );
                }).toList(),
              )

              /// * New Releases Section ----------------------------

              ,
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.h),
                color: AppTheme.darkGreyColor,
                width: 456.w,
                height: 210.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, bottom: 10.h),
                      child: Text(
                        "New Releases",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return MoviePoster(
                            /// TODO:New Releases Movie image

                            imagePath: 'assets/images/movie_demo_image.png',
                            width: 100.w,
                            height: 150.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              /// * Recomended Section --------------------------------------
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
                        "Recomended",
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
                            }))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
