import 'package:flutter/material.dart';

import '../modules/status.dart';
import 'Setteing_Screen.dart';


class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  List<Status> statusList = [
    Status(
        statuse_img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwg2PWrY_5mkISXy_GqXWUYPbglvpL6FSUgg&usqp=CAU",
        name: "Buthaina",
        status: "Today, 1:40"),
    Status(
        statuse_img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwg2PWrY_5mkISXy_GqXWUYPbglvpL6FSUgg&usqp=CAU",
        name: "Buthaina",
        status: "Today, 1:40"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c325.png"),
            ),
            title: Text("My Status"),
            subtitle: Text("Today 12:30"),
            trailing: PopupMenuButton(itemBuilder: (context) {
              return ["Setting"].map((e) {
                return PopupMenuItem(
                  child: Text(e),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return SetteingSecreen();
                    }));
                  },
                );
              }).toList();
            }),
          ),
          Container(
            margin: EdgeInsets.all(15),
              child: Text("Recent Update")),
          ListView.builder(
            shrinkWrap: true,
            itemCount: statusList.length,
            itemBuilder: (context,i){
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(statusList[i].statuse_img!),),
                title: Text(statusList[i].name!),
                subtitle: Text(statusList[i].status!,
                )
              );
            },
          )
        ],
      ),
    );
  }
}
