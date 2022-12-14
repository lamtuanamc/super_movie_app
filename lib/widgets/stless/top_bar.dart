import 'package:flutter/material.dart';
import 'package:super_movie_app/config/themes/text_style.dart';

class TopBarCard extends StatelessWidget {
  final String content;
  final double height;

  const TopBarCard({Key? key, required this.content, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: height,
          child: Center(
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TxtStyle.heading2,
            ),
          )),
      Container(
        margin: EdgeInsets.only(left: 10),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      )
    ]);
  }
}
