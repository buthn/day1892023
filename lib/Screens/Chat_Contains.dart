import 'package:flutter/material.dart';

import '../modules/chat_Containes.dart';

class ChatContainsScreen extends StatefulWidget {
  const ChatContainsScreen({super.key});

  @override
  State<ChatContainsScreen> createState() => _ChatContainsScreenState();
}

class _ChatContainsScreenState extends State<ChatContainsScreen> {
  List<ChatContains> massagesList = [
    ChatContains(reciveMassage: "Hi Buthaina", sendMassage: "Hi Sara"),
    ChatContains(reciveMassage: "How are you?", sendMassage: "fine, what about you?"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
      ),
      body: ListView.separated(
        separatorBuilder: (context,i){return Divider();},
          itemCount: massagesList.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 100),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      color: Colors.black26,
                      child: Text(massagesList[i].reciveMassage!)),
                  SizedBox(height: 20,),
                  Container(
                      margin: EdgeInsets.only(left: 100),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      color: Colors.blueGrey,
                      child: Text(massagesList[i].sendMassage!)),
                ],
              ),
            );
          }),
    );
  }
}
