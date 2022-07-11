import 'package:flutter/material.dart';

class StoryCircleContainer extends StatelessWidget {

  final String pathImage;
  final String name;

  const StoryCircleContainer({
    Key? key,
    required this.pathImage,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget imageWidget =  Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(pathImage).image,
              fit: BoxFit.cover
          ),
          borderRadius: const BorderRadius.all(Radius.circular(100))
      ),
    );

    Widget nameWidget = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500
        ),
      ),
    );


    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
         imageWidget,
          nameWidget
        ],
      ),
    );
  }
}
