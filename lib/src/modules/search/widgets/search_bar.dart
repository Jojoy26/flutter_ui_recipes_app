import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final void Function() onBackPress;
  final void Function() onClearPress;
  const SearchBar({
    Key? key,
    required this.onBackPress,
    required this.onClearPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 0)),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search',
        prefixIcon: IconButton(
          iconSize: 19,
          onPressed: onBackPress,
          icon: Icon(Icons.arrow_back_ios),
        ),
        suffixIcon: IconButton(
          iconSize: 19,
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
      ),
    );
  }
}
