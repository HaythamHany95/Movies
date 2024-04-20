import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies/networking/models/watch_list.dart';
import 'package:movies/shared/string_constants.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/components/searc_movie_item.dart';

class WatchListTab extends StatefulWidget {
  const WatchListTab({super.key});

  @override
  State<WatchListTab> createState() => _WatchListTabState();
}

class _WatchListTabState extends State<WatchListTab> {

  List<WatchList> watchList = [];

  @override
  void initState() {
    var box = Hive.box<WatchList>(AppStringConstants.watchListBox);
    watchList = box.values.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return SearchMovieItem(
              title: watchList[index].title,
              poster: watchList[index].poster,
              date: watchList[index].year,
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
          itemCount: watchList.length,
        ),
      ),
    );
  }
}
