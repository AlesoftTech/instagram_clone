import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intragram_clone_by_alejo/feature/shop/widgets/filter_tag_shop.dart';

class ShopView extends StatelessWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header = Padding(
        padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Tienda',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          Row(
            children: const [
              Icon(
                  FontAwesomeIcons.bookmark
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                    FontAwesomeIcons.bars
                ),
              ),
            ],
          )
        ],
      ),
    );

    Widget searchBar = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
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

    Widget tags = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FilterTagShop(label: 'Tiendas'),
            FilterTagShop(label: 'Videos'),
            FilterTagShop(label: 'Editors picks'),
            FilterTagShop(label: 'Colecciones'),
            FilterTagShop(label: 'Guías')
          ],
        ),
      ),
    );

    Widget shopFeedContainer = Container(
      width: Get.width/2,
      height: Get.width/2,
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
            image: Image.asset('assets/images/cofi.png').image,
            fit: BoxFit.fill
        ),
      ),
    );

    Widget shopFeed = GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      children: [
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
        shopFeedContainer,
      ],
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              header,
              searchBar,
              tags,
              shopFeed
            ],
          ),
        ),
      ),
    );
  }
}
