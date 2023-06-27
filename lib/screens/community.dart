import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Lets Talk'),
        titleTextStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 212, 242, 178),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(messages[index].sender[0]),
                      ),
                      title: Text(messages[index].sender),
                      subtitle: Text(messages[index].message),
                    );
                  },
                ),
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Send message logic
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Message {
  final String sender;
  final String message;

  Message({required this.sender, required this.message});
}

List<Message> messages = [
  Message(sender: 'John', message: 'Hello, everyone!'),
  Message(sender: 'Emily', message: 'Hi John! How is your farm doing?'),
  Message(
      sender: 'Michael',
      message: 'I just harvested my crops. Check out this picture!'),
  Message(sender: 'Sarah', message: 'That looks great, Michael!'),
];
