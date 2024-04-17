import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/components/custom_movie.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Browse Category',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    childAspectRatio: 1.4,
                    mainAxisSpacing: 40),
                itemBuilder: (context, index) {
                  return const CustomMovie();
                }),
          ),
        ],
      ),
    );
  }
}
