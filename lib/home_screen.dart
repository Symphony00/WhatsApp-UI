import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("WhatsApp"),
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(text: "Status"),
            Tab(text: "Calls")
          ]),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
                itemBuilder: (context) => const [
                      PopupMenuItem(value: 1, child: Text("New Group")),
                      PopupMenuItem(value: 2, child: Text("Settings")),
                      PopupMenuItem(value: 1, child: Text("Logout"))
                    ])
          ],
        ),
        body: TabBarView(children: [
          const Center(
              child: Icon(
            Icons.camera_alt,
            size: 100,
          )),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(index % 2 == 0
                          ? "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                          : "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text(index % 2 == 0 ? "Jason Hales" : "Alexa Gem"),
                    subtitle: Text(index % 2 == 0
                        ? "Where are my Shoes?"
                        : "Hey! Whats'up"),
                    trailing: Text(index % 2 == 0 ? "7:50 AM" : "9:00 PM"),
                  )),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(index % 2 == 0
                            ? "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                            : "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                    title: Text(index % 2 == 0 ? "Jason Hales" : "Alexa Gem"),
                    subtitle: Text(
                        index % 2 == 0 ? "50 minutes ago" : "25 minutes ago"),
                  )),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(index % 2 == 0
                          ? "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                          : "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text(index % 2 == 0 ? "Jason Hales" : "Alexa Gem"),
                    subtitle: Text(
                        index % 2 == 0 ? "Missed Audio Call" : "Video Call"),
                    trailing: index % 2 == 0
                        ? const Icon(color: Colors.green, Icons.call)
                        : const Icon(color: Colors.red, Icons.video_call),
                  )),
        ]),
      ),
    );
  }
}
