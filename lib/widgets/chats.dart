import 'package:fish_app/screens/chat_screen.dart';
import 'package:fish_app/utils/dummy.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        centerTitle: true,
        leading: SizedBox(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: conversations.length,
            itemBuilder: ((_, index) {
              return ListTile(
                leading: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Image.network(
                      conversations[index]["imageUrl"],
                    ),
                  ),
                ),
                title: Text(
                  conversations[index]["name"],
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: Text(
                  conversations[index]["lastMessage"],
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatScreen(conversation: conversations[index]),
                    ),
                  );
                },
              );
            })),
      ),
    );
  }
}
