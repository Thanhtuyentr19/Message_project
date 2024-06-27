import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Message> messages = [
    Message(
      userAvatarUrl:
      'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png',
      userName: 'Thanh Tuyền',
      messageContent: 'Hello, friend.',
      timestamp: '10:00 AM',
    ),
    Message(
      userAvatarUrl:
      'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png',
      userName: 'Yen Nhi',
      messageContent: 'Hi there!',
      timestamp: 'Yesterday',
    ),
    Message(
      userAvatarUrl:
      'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png',
      userName: 'Ty tyn',
      messageContent: 'How are you?',
      timestamp: '2 days ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Messenger',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(message.userAvatarUrl),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message.userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        message.messageContent,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        message.timestamp,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Message {
  final String userAvatarUrl;
  final String userName;
  final String messageContent;
  final String timestamp;

  Message({
    required this.userAvatarUrl,
    required this.userName,
    required this.messageContent,
    required this.timestamp,
  });
}
