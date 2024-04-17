import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/searc_movie_item.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/search_text_fiedl.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchTextField(),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return SearchMovieItem();
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
            itemCount: 5,
          ),
        )
      ],
    );
  }
}
