import 'package:flutter/material.dart';
class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    EdgeInsets.only(
      top: 20
    ),
    child: Column(
      children: [
        Text("lorem ipsum is simply dummy test of the printin g and ")
      ],
    ),);
  }
}
