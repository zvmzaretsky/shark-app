import 'package:fish_app/utils/dummy.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const String route = "/chatScreen";
  final Map<String, String> conversation;

  const ChatScreen({Key key, this.conversation}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final String userId = "user001";
  var _key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.conversation["name"]),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          ),
                          color: messages[index]["sender"] == userId
                              ? Theme.of(context).primaryColor.withOpacity(0.5)
                              : Theme.of(context).accentColor.withOpacity(0.5)),
                      child: Text(
                        messages[index]["message"],
                        textAlign:
                          messages[index]["sender"] == userId
                              ? TextAlign.right : TextAlign.left,
                      ),
                    );
                  },
                  itemCount: messages.length,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: TextField(
                  key: _key,
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: "Enter a message",
                    helperText: "Hit Enter/Tick Makr on your keyboad to send",
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      messages.add(
                        {
                          "conversationId": "001",
                          "messageId": "message00" + messages.length.toString(),
                          "user1": "user001",
                          "user2": "user002",
                          "sender": "user001",
                          "message": value
                        },
                      );
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
