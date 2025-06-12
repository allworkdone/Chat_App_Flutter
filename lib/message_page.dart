import 'package:chat_app/core/theme.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Recent',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildRecentContact('allworkdone', context),
                _buildRecentContact('abhishek', context),
                _buildRecentContact('akash', context),
                _buildRecentContact('aniket', context),
                _buildRecentContact('someone', context),
                _buildRecentContact('allworkdone', context),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: DefaultColors.messageListPage,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: ListView(
              children: [
                _buildMessageTile("Rohit", "allworkdone27@gmai.com", '08:45'),
                _buildMessageTile("Json", "allworkdone27@gmai.com", '08:45'),
                _buildMessageTile("commit", "allworkdone27@gmai.com", '08:45'),
                _buildMessageTile("Rohit", "allworkdone27@gmai.com", '08:45'),
                _buildMessageTile("Rohit", "allworkdone27@gmai.com", '08:45'),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _buildMessageTile(String name, String message, String time) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSluqKZ6N1hVcDYu-dIROvHqzcp4HXaoopQsg&s'),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Colors.grey),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(time, style: TextStyle(color: Colors.grey)),
    );
  }

  Widget _buildRecentContact(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/183473986?v=4',
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
