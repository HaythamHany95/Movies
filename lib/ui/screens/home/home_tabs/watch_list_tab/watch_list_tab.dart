import 'package:flutter/material.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/searc_movie_item.dart';
import 'package:movies/ui/screens/home/home_tabs/watch_list_tab/components/watched_item.dart';

class WatchListTab extends StatelessWidget {
  const WatchListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return WatchedItem();
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
        itemCount: 10,
      ),
    );
  }
}
