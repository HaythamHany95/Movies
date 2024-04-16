import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel,HomeScreenStates>(
      builder: (BuildContext context, HomeScreenStates<dynamic> state) {

        return Container(
          color: Colors.grey,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100,),
            ],
          ),
        );
      },
    );
  }
}
