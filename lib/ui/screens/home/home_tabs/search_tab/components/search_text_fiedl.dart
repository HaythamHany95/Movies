import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // No border
                    hintText: ' Search ',
                    hintStyle: TextStyle(
                        color: Colors.white, fontSize: 18), // White hint text
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18), // Text color and font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
