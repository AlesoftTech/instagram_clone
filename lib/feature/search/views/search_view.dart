import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget searchBar = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.grey.shade600
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      border: InputBorder.none
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

    Widget searchFeedContainer = Container(
      width: Get.width/3,
      height: Get.width/3,
      decoration: BoxDecoration(
        border: const Border(
          top: BorderSide(
            color: Colors.white,
            width: 1
          ),
          bottom:  BorderSide(
              color: Colors.white,
              width: 1
          ),
          left:  BorderSide(
              color: Colors.white,
              width: 1
          ),
          right:  BorderSide(
              color: Colors.white,
              width: 1
          ),
        ),
        image: DecorationImage(
          image: Image.asset('assets/images/post_image.jpeg').image,
          fit: BoxFit.fill
        ),
      ),
    );

    Widget searchFeed = GridView.count(
        crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      children: [
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
        searchFeedContainer,
      ],
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
                searchBar,
              searchFeed
            ],
          ),
        ),
      ),
    );
  }
}
