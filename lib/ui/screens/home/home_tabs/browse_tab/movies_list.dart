import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/di/di.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_state.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/searc_movie_item.dart';

class MoviesList extends StatelessWidget {

  static const String routeName = '/movies_list';

  const MoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<BrowseCubit>()..getMoviesByGenre( id : 35),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16),
          child: BlocBuilder<BrowseCubit,BrowseState>(
            builder: (context, state) {
              if (state is Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      /// navigate to movie details screen
                      // Navigator.pushNamed(
                      //   context,
                      //   MovieDetailsScreen.routeName,
                      //   arguments: context
                      //       .read<SearchCubit>()
                      //       .searchResults[index]
                      //       .id,
                      // );
                    },
                    child: SearchMovieItem(
                      title: context
                          .read<BrowseCubit>()
                          .moviesByGenre[index]
                          .title,
                      poster: context
                          .read<BrowseCubit>()
                          .moviesByGenre[index]
                          .poster,
                      date:
                      context.read<BrowseCubit>().moviesByGenre[index]
                          .year,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color(0xffB7935F),
                    ),
                  );
                },
                itemCount: context.read<BrowseCubit>().moviesByGenre.length,
              );
            }
            ),
        ),
      ),
    );
  }
}
