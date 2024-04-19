import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/networking/di/di.dart';
import 'package:movies/ui/screens/details/cubit/movie_details_cubit.dart';
import 'package:movies/ui/screens/details/cubit/movie_details_states.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/widgets/movie_poster.dart';
import 'package:movies/ui/utils/app_theme.dart';
import 'package:movies/ui/utils/utils.dart';

class MovieDetailsScreen extends StatelessWidget {

  const MovieDetailsScreen({super.key, required this.id,});
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<MovieDetailsCubit>()..getMovieDetails(id)..getSimilarMovies(id),
      child: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, state) {
          if (state is LoadingDetails && state is LoadingSimilarMovies) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(context.read<MovieDetailsCubit>().movieDetails.title),
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
                            Image.network(
                              context.read<MovieDetailsCubit>().movieDetails.backdropPath,
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
                                    context.read<MovieDetailsCubit>().movieDetails.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontSize: 20.sp),
                                  ),
                                  Text(
                                    "${context.read<MovieDetailsCubit>().movieDetails.year} PG-13 ${context.read<MovieDetailsCubit>().movieDetails.duration} m",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Utils.openWebPage(
                            'https://www.youtube.com/watch?v=ksj69JaBrAo',
                          );
                        },
                        child: Image.network(context.read<MovieDetailsCubit>().movieDetails.posterPath),
                      ),
                    ],
                  ),
                  Padding(
                    padding: REdgeInsets.only(left: 20.w, top: 10.h),
                    child: Row(
                      children: [
                        MoviePoster(
                          imagePath: context.read<MovieDetailsCubit>().movieDetails.posterPath,
                          width: 129.w,
                          height: 199.h,
                          id: id,
                          title: context.read<MovieDetailsCubit>().movieDetails.title,
                          year: context.read<MovieDetailsCubit>().movieDetails.year,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 200.w,
                              child: Text(
                                context.read<MovieDetailsCubit>().movieDetails.description,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
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

                                  context.read<MovieDetailsCubit>().movieDetails.voteAverage,
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

                  // * More Like This Section --------------------------------------

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
                                        context.read<MovieDetailsCubit>().similarMovies[index].poster,
                                        width: 120.w,
                                        height: 130.h,
                                        id: context.read<MovieDetailsCubit>().similarMovies[index].id,
                                        title: context.read<MovieDetailsCubit>().similarMovies[index].title,
                                        year: context.read<MovieDetailsCubit>().similarMovies[index].year,
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

                                                context.read<MovieDetailsCubit>().similarMovies[index].voteAverage,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall
                                                    ?.copyWith(fontSize: 14.sp),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            /// TODO:Recomended Movie Title
                                            context.read<MovieDetailsCubit>().similarMovies[index].title,
                                            maxLines: 1,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(fontSize: 14.sp),
                                          ),
                                          Text(
                                            /// TODO:Recomended Movie Published

                                            '${context.read<MovieDetailsCubit>().similarMovies[index].year} PG-13 2h 7m',
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
        },
      ),
    );
  }
}
