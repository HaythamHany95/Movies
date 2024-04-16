import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel,HomeScreenStates>(
     // bloc: context.read<HomeScreenViewModel>()..getPopularMovies(),
      builder: (BuildContext context, HomeScreenStates<dynamic> state) {
        if(state is LoadingPopularMovies){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(state is LoadedPopularMovies){
          return Container(
            color: Colors.green,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 100,),
                  const Text('Loaded Popular Movies'),
                  const SizedBox(height: 20,),
                  Text(context.read<HomeScreenViewModel>().popularMovies.length.toString()),
                ],
              ),
            ),
          );
        }
        else if(state is Error){
          return Container(
            color: Colors.red,
            child: Center(
              child: Text(state.message),
            ),
          );
        }
        return Container(
          color: Colors.grey,
          child: const Center(
          ),
        );
      },
    );
  }
}
