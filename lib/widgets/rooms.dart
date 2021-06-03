import 'package:flutter/material.dart';
import 'package:fbpro/models/models.dart';
import 'package:fbpro/widgets/index.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key key, @required this.onlineUsers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvataar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ));
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print("hello"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      borderSide: BorderSide(color: Colors.grey),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.video_call,
            size: 35.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text("Create\nRoom")
        ],
      ),
    );
  }
}
