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

late  TextEditingController textEditingController;

@override
  void initState() {
    // TODO: implement initState
  textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Image.asset(AssetsManager.botImage),


      ),
      title: Text('ChatGpt'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded), color: Colors.white,)
        ],
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
            ),
            SizedBox(height: 2,),
            
            
            Material(
              color: cardColor,
              child: Row(
              children: [
                 Expanded(child: TextField(controller: textEditingController,
                  onSubmitted: (value){

                  },
                  decoration: InputDecoration.collapsed(hintText: 'How can i help you', hintStyle: TextStyle(color: Colors.grey)),)),
                IconButton(onPressed:  () {},
                    icon: Icon(Icons.send),
                color: Colors.white,
                )
              ],
              ),
            )
          ]
        ],),
      ),
    );
  }
}
