import 'package:flutter/material.dart';
import 'asset_manager.dart';
import 'package:chatgpt_course/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Image.asset(AssetsManager.botImage),

      ),
      title: Text('ChatGpt'),
      ),
      body: SafeArea(
        child: Column(children: [

          Flexible(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index){
              return Text('Hello this is a text');
            }),
          ),
          if(_isTyping)...[
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 16,
            )
          ]
        ],),
      ),
    );
  }
}
