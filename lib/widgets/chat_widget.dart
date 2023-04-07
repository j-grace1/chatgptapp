import 'package:chatgpt_course/asset_manager.dart';
import 'package:chatgpt_course/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Material(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child:  Row(
            children: [
              Image.asset(AssetsManager.userImage)
            ],
          ),
        ),
      )
      ],
    );
  }
}
