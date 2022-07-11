import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intragram_clone_by_alejo/feature/home/widgets/instagram_post.dart';
import 'package:intragram_clone_by_alejo/feature/home/widgets/story_circle_container.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> appBarIcons = const [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          FontAwesomeIcons.squarePlus,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          FontAwesomeIcons.heart,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          FontAwesomeIcons.paperPlane,
          color: Colors.black,
        ),
      ),
    ];

    Widget storiesFeed = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
        child: Row(
          children: const [
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
            StoryCircleContainer(
                pathImage: 'assets/images/profile.jpg',
              name: 'Word2006.exe',
            ),
          ],
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,
          title: Image.asset(
              'assets/images/instagram_logo.png',
            width: 140,
          ),
          actions: appBarIcons,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              storiesFeed,
              const Divider(height: 10, thickness: 0.5,),
              Column(
                children: const [
                  InstagramPost(
                    profilePathImage: 'assets/images/profile.jpg',
                    userName: 'word2006.exe',
                    postImage: 'assets/images/post_image.jpeg',
                    description: 'con salemcito',
                    numberOfLikes: 4,
                  ),
                  InstagramPost(
                    profilePathImage: 'assets/images/profile.jpg',
                    userName: 'word2006.exe',
                    postImage: 'assets/images/post_image.jpeg',
                    description: 'con salemcito',
                    numberOfLikes: 4,
                  ),
                  InstagramPost(
                    profilePathImage: 'assets/images/profile.jpg',
                    userName: 'word2006.exe',
                    postImage: 'assets/images/post_image.jpeg',
                    description: 'con salemcito',
                    numberOfLikes: 4,
                  )
                ],
              )
            ],
          ),
        )
      ),
    );


  }
}

