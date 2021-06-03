import 'package:fbpro/models/models.dart';
import 'package:fbpro/widgets/index.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final User currentUser;

  const CreatePost({Key key, @required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvataar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "What/'s up Dude?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    label: Text('Live'),
                    icon: Icon(Icons.videocam, color: Colors.red),
                    onPressed: () {
                      print('Pressed');
                    }),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                    label: Text('Live'),
                    icon: Icon(Icons.video_call, color: Colors.green),
                    onPressed: () {
                      print('Pressed');
                    }),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                    label: Text('Live'),
                    icon: Icon(Icons.photo_library, color: Colors.blue),
                    onPressed: () {
                      print('Pressed');
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
