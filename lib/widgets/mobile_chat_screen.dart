import 'package:chatify/colors.dart';
import 'package:chatify/info.dart';
import 'package:chatify/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.missed_video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: Text(
          '${info[0]['name']}',
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        hintText: 'Type a message',
                        helperStyle: const TextStyle(color: Colors.white),
                        fillColor: searchBarColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
