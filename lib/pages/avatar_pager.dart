import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
        actions: [
          Icon(Icons.notification_important_outlined),
          SizedBox(width: 5.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/a8/62/d0/a862d07930bd3b3d71a6c86c3ef889ab.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/a8/62/d0/a862d07930bd3b3d71a6c86c3ef889ab.jpg"),
            ),
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/avatar.jpeg"),
            ),
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile.jpeg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
