import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class InstagramPost extends StatelessWidget {

  final String userName;
  final String profilePathImage;
  final String postImage;
  final int numberOfLikes;
  final String description;


  const InstagramPost({
    Key? key,
    required this.userName,
    required this.profilePathImage,
    required this.postImage,
    required this.numberOfLikes,
    required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget profilePicAndNameWidget =  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset(profilePathImage).image,
                  fit: BoxFit.cover
              ),
              borderRadius: const BorderRadius.all(Radius.circular(100))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only( left: 10),
          child: Text(
            userName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ],
    );

    Widget postHeader = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profilePicAndNameWidget,
          const Icon(
              FontAwesomeIcons.ellipsisVertical,
            size: 15,
          )
        ],
      ),
    );



    Widget imageOfThePostWidget = Container(
        width: Get.width,
      child: Image.asset(postImage),
    );


    const double iconSize = 25;

    Widget footerIcons = Row(
      children: const [
        Icon(
          FontAwesomeIcons.heart,
          size: iconSize,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            FontAwesomeIcons.comment,
            size: iconSize,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            FontAwesomeIcons.paperPlane,
            size: iconSize,
            color: Colors.black,
          ),
        ),
      ],
    );

    Widget postFooter = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          footerIcons,
          const Icon(
            FontAwesomeIcons.bookmark,
            size: iconSize,
          )
        ],
      ),
    );

    Widget numberOfLikes =  Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 5),
      child: Text(
        this.numberOfLikes.toString() + ' Me gusta',
        style: const TextStyle(
            fontSize: 15,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    Widget postDescription = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: userName,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
            ),
            TextSpan(
                text: ' $description',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      )
    );



    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        postHeader,
        imageOfThePostWidget,
        postFooter,
        numberOfLikes,
        postDescription
      ],
    );
  }
}
