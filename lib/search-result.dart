import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Image.asset('image/a.jpg', fit: BoxFit.cover,)),
    );
  }
}