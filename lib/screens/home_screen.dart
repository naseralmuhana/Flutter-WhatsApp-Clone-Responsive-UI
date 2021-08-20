import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/config/config.dart';
import 'package:whatsapp_clone_responsive_ui/widgets/widgets.dart';
import 'package:whatsapp_clone_responsive_ui/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Camera'),
        child: Icon(Icons.camera_alt),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: MyColors.kPrimaryColor,
                title: Text('WhatsApp'),
                actions: [
                  CircleButton(
                    iconData: MyIcons.search,
                    iconSize: 25,
                    onPressed: () => print('search'),
                  ),
                  CircleButton(
                    iconData: MyIcons.more_vert,
                    iconSize: 25,
                    onPressed: () => print('More'),
                  ),
                ],
                bottom: TabBar(
                  indicatorWeight: 2.5,
                  indicatorColor: MyColors.kLightColor,
                  tabs: [
                    Tab(text: 'Chats'),
                    Tab(text: 'Status'),
                    Tab(text: 'Calls'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ChatsWidget(
                chats: chats,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                color: Colors.yellow,
                width: double.infinity,
                height: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
