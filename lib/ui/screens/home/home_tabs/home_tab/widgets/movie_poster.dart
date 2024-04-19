import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies/networking/models/watch_list.dart';
import 'package:movies/shared/string_constants.dart';
import 'package:movies/ui/utils/app_routes.dart';

class MoviePoster extends StatefulWidget {
  final double? width;
  final double? height;
  final String? imagePath;
  final int id;
  final String title;
  final String year;

  const MoviePoster({
    super.key,
    this.height,
    this.width,
    required this.imagePath,
    required this.id,
    required this.title,
    required this.year,
  });

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  bool isWathcList = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.movieDetailsScreen,
                    arguments: widget.id,
                  );
                },
                child: Image.network(
                  widget.imagePath ?? '',
                  fit: BoxFit.fill,
                  width: widget.width,
                  height: widget.height,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                isWathcList = !isWathcList;
                if (isWathcList == true) {
                  var box = Hive.box<WatchList>(AppStringConstants.watchListBox);
                  box.add(
                    WatchList(
                      id: widget.id,
                      title: widget.title,
                      year: widget.year,
                      poster: widget.imagePath??'',
                    ),
                  );
                }
                if(isWathcList == false){
                  var box = Hive.box(AppStringConstants.watchListBox);
                  box.deleteAt(box.values.toList().indexWhere((element) => element.id == widget.id));
                }
                setState(() {});
              },
              child: (isWathcList)
                  ? Image.asset('assets/images/added_icon.png')
                  : Image.asset('assets/images/bookmark_icon.png'),
            ),
          ],
        ),
      ],
    );
  }
}
