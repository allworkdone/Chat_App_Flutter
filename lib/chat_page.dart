import 'package:chat_app/core/theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/183473986?v=4"),
            ),
            SizedBox(width: 10),
            Text(
              'allworkdone',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                _buildReceivedMessage(context, 'I am connecting on figma...'),
                _buildSentMessage(
                    context, 'I am in the process of designing some....'),
                _buildReceivedMessage(context, 'Next month ?'),
                _buildSentMessage(context, 'I am almost finished'),
                _buildReceivedMessage(context, '🤝'),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildReceivedMessage(BuildContext context, String message) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 30, top: 5, bottom: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.receiverMessage,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(message),
      ),
    );
  }

  Widget _buildSentMessage(BuildContext context, String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: 30, top: 5, bottom: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.senderMessage,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(message),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      decoration: BoxDecoration(
          color: DefaultColors.sentMessageInput,
          borderRadius: BorderRadius.circular(25)),
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          GestureDetector(
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Message",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Icon(
              Icons.send,
              color: Colors.grey,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
