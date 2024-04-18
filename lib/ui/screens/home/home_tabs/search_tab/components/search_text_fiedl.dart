import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_states.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
      builder:(context,state){
        return Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none, // No border
                        hintText: ' Search ',
                        hintStyle: TextStyle(
                            color: Colors.white, fontSize: 18), // White hint text
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      // Text color and font size
                      onChanged: (value){
                        context.read<SearchCubit>().search(query: value);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
