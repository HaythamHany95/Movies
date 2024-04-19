import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/components/custom_movie.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_state.dart';
import 'package:movies/ui/utils/app_routes.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Browse Category',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(height: 20),
            BlocBuilder<BrowseCubit, BrowseState>(
              bloc: context.read<BrowseCubit>()..getGenre(),
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Expanded(
                  child: GridView.builder(
                    itemCount: context.read<BrowseCubit>().genres.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30,
                            childAspectRatio: 1.4,
                            mainAxisSpacing: 40),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print('daf');
                          Navigator.pushNamed(
                            context,
                            AppRoutes.moviesList,
                            arguments: context.read<BrowseCubit>().genres[index].id,
                          );
                        },
                        child: CustomMovie(
                          genre: context.read<BrowseCubit>().genres[index].name ??
                              '',
                          id: context.read<BrowseCubit>().genres[index].id ?? 0,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
