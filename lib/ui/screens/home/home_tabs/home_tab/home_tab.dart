import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/recommend_item.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/slider_item.dart';
import 'package:movies/ui/utils/app_routes.dart';
import 'package:movies/ui/utils/app_theme.dart';


class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel,HomeScreenStates>(
      bloc: context.read<HomeScreenViewModel>()..getRecommendedMovies()..getUpcomingMovies()..getPopularMovies(),
      builder: (BuildContext context, HomeScreenStates<dynamic> state) {
        if (state is LoadedPopularMovies || state is LoadedUpcomingMovies || state is LoadedRecommendedMovies) {
          return SingleChildScrollView(
            child: Column(
              children: [

                /// * Popular Movies Section ----------------------------

                CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    height: 300.h,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 1000,
                    ),
                  ),
                  itemCount:
                  context.read<HomeScreenViewModel>().popularMovies.length,
                  itemBuilder: (context, index, realIndex) {
                    return SliderItem(
                      movieName: context.read<HomeScreenViewModel>().popularMovies[index].title,
                      movieImageBackground: context.read<HomeScreenViewModel>().popularMovies[index].backgroundPoster,
                      movieImagePoster: context.read<HomeScreenViewModel>().popularMovies[index].poster,
                      moviePublished: context.read<HomeScreenViewModel>().popularMovies[index].year,
                      id: context.read<HomeScreenViewModel>().popularMovies[index].id,
                    );
                  },
                ),

                /// * New Releases Section ----------------------------

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
                          itemCount: context
                              .read<HomeScreenViewModel>()
                              .upcomingMovies
                              .length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                print(
                                  context
                                      .read<HomeScreenViewModel>()
                                      .upcomingMovies[index].id,
                                );
                                Navigator.pushNamed(context, AppRoutes.movieDetailsScreen,
                                  arguments: context
                                      .read<HomeScreenViewModel>()
                                      .upcomingMovies[index].id,
                                );
                              },
                              child: MoviePoster(
                                /// TODO:New Releases Movie image
                                imagePath: context
                                    .read<HomeScreenViewModel>()
                                    .upcomingMovies[index]
                                    .poster,
                                width: 100.w,
                                height: 150.h,
                                id: context
                                    .read<HomeScreenViewModel>()
                                    .upcomingMovies[index].id,
                                title: context
                                    .read<HomeScreenViewModel>()
                                    .upcomingMovies[index].title,
                                year: '',

                              ),
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
                          "Recommended",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: context
                              .read<HomeScreenViewModel>()
                              .recommendationMovies
                              .length,
                          itemBuilder: (context, index) {
                            return RecommendItem(
                              movieName: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index]
                                  .title,
                              movieImagePoster: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index]
                                  .poster,
                              moviePublished: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index]
                                  .year,
                              movieRating: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index]
                                  .voteAverage,
                              movieRated: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index]
                                  .rated,
                              id: context
                                  .read<HomeScreenViewModel>()
                                  .recommendationMovies[index].id,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ) ,
              ],
            ),
          );
        } else if (state is LoadingPopularMovies ) {
          return const SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is Error) {
          return SafeArea(
            child: Center(
              child: Text(state.message),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
