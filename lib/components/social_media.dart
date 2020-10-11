import 'package:flutter/material.dart';
import 'package:flutter_project/components/social_media_button.dart';

class SocialMedia extends StatelessWidget {
  final double myHeigth;
  final double myWidth;
  SocialMedia({this.myHeigth, this.myWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeigth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialMediaButton(
            iconName: 'instagram',
            myLink: 'https://www.instagram.com/triz_draws/',
            myHeight: myHeigth,
          ),
          SocialMediaButton(
            iconName: 'linkedin',
            myLink: 'https://www.linkedin.com/in/beatriz-severo/',
            myHeight: myHeigth,
          ),
          SocialMediaButton(
            iconName: 'behance',
            myLink: 'https://www.behance.net/beatrizsevero',
            myHeight: myHeigth,
          ),
        ],
      ),
    );
  }
}
