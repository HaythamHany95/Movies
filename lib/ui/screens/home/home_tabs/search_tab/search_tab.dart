import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/searc_movie_item.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/search_text_fiedl.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_states.dart';
import 'package:movies/ui/utils/app_routes.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SearchTextField(),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is Loading) {
                return const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.movieDetailsScreen,
                          arguments: context
                              .read<SearchCubit>()
                              .searchResults[index]
                              .id,
                        );
                      },
                      child: SearchMovieItem(
                        title: context
                            .read<SearchCubit>()
                            .searchResults[index]
                            .title,
                        poster: context
                            .read<SearchCubit>()
                            .searchResults[index]
                            .poster,
                        date:
                            context.read<SearchCubit>().searchResults[index].year,
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
                  itemCount: context.read<SearchCubit>().searchResults.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
