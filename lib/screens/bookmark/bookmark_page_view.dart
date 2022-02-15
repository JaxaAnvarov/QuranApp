import 'package:flutter/material.dart';

class BookmarkViewPage extends StatelessWidget {
  const BookmarkViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade200,
        title: const Text("Bookmark Page"),
      ),
    );
  }
}
