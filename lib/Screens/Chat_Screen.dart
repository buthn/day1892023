import 'package:flutter/material.dart';

import '../modules/chat.dart';
import 'Chat_Contains.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<Chat> chatList = [
    Chat(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwg2PWrY_5mkISXy_GqXWUYPbglvpL6FSUgg&usqp=CAU",
        name: "Buthaina",
        message: "Hi Buthaina"),
    Chat(
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwg2PWrY_5mkISXy_GqXWUYPbglvpL6FSUgg&usqp=CAU",
        name: "Buthaina",
        message: "Hi Buthaina"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ChatContainsScreen();
                  }));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(chatList[index].image!),
                  ),
                  title: Text(chatList[index].name!),
                  subtitle: Text(chatList[index].message!),
                  trailing: Column(
                    children: [
                      Text("12:30"),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.check_circle),
                    ],
                  ),
                ),
              );
            }));
  }
}