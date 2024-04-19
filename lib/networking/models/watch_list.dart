
import 'package:hive/hive.dart';
part 'watch_list.g.dart';

@HiveType(typeId: 0)
class WatchList{
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String year;
  @HiveField(3)
  final String poster;

  WatchList({
    required this.id,
    required this.title,
    required this.year,
    required this.poster,
  });
}