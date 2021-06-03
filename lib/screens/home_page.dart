import 'package:fbpro/data/data.dart';
import 'package:fbpro/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fbpro/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              title: Text(
                "facebook",
                style: const TextStyle(
                    color: Colors.blue,
                    letterSpacing: -1.2,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0),
              ),
              floating: true,
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () => print("click"),
                ),
                CircleButton(
                  icon: Icons.message,
                  iconSize: 30.0,
                  onPressed: () => print("click"),
                )
              ],
            ),
            SliverToBoxAdapter(child: CreatePost(currentUser: currentUser)),
            SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                sliver:
                    SliverToBoxAdapter(child: Rooms(onlineUsers: onlineUsers))),
            SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                    child:
                        Stories(currentUser: currentUser, stories: stories))),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ))
          ],
        ),
      ),
    );
  }
}
