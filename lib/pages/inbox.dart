import 'package:flutter/material.dart';
import 'package:woff/pages/profile/common/for_profile.dart';
import 'package:woff/widgets/Commons.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  // List inboxdata = [
  //   {
  //     'username': 'dannykebede',
  //     'profileimage':
  //         'https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo=',
  //     'messagebody': 'hello, how are you?',
  //   },
  //   {
  //     'username': 'jazz_me',
  //     'profileimage':
  //         'https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo=',
  //     'messagebody': 'where are you?',
  //   },
  //   {
  //     'username': 'chale',
  //     'profileimage':
  //         'https://media.istockphoto.com/id/1319763895/photo/smiling-mixed-race-mature-man-on-grey-background.jpg?s=612x612&w=0&k=20&c=ZiuzNX9LhTMMcRFrYNfq_zFR7O_aH-q7x1L5elko5uU=',
  //     'messagebody': 'lekecheh yet nat..',
  //   },
  //   {
  //     'username': 'jazz_me',
  //     'profileimage':
  //         'https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo=',
  //     'messagebody': 'where are you?',
  //   },
  //   {
  //     'username': 'chale',
  //     'profileimage':
  //         'https://media.istockphoto.com/id/1319763895/photo/smiling-mixed-race-mature-man-on-grey-background.jpg?s=612x612&w=0&k=20&c=ZiuzNX9LhTMMcRFrYNfq_zFR7O_aH-q7x1L5elko5uU=',
  //     'messagebody': 'lekecheh yet nat..',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.inbox,
            color: Colors.black,
            size: 35,
          ),
          SizedBox(
            width: 15,
          )
        ],
        title: const Text(
          "InBox",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                elevation: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: size.height * 0.21,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 120,
                        child: Column(
                          children: const [
                            Circilewidget(
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV9eyw9VMhXvT9OIgP-BUwGFt27cAAxmZCyVObQ_0&s",
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              child: Center(
                                child: Texts(text: "Live", color: Colors.white),
                              ),
                            ),
                            Texts(
                              text: "username",
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 120,
                        child: Column(
                          children: const [
                            Circilewidget(
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV9eyw9VMhXvT9OIgP-BUwGFt27cAAxmZCyVObQ_0&s",
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              child: Center(
                                child: Texts(text: "Live", color: Colors.white),
                              ),
                            ),
                            Texts(
                              text: "username",
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 120,
                        child: Column(
                          children: const [
                            Circilewidget(
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV9eyw9VMhXvT9OIgP-BUwGFt27cAAxmZCyVObQ_0&s",
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              child: Center(
                                child: Texts(text: "Live", color: Colors.white),
                              ),
                            ),
                            Texts(
                              text: "username",
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        width: 120,
                        child: Column(
                          children: const [
                            Circilewidget(
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV9eyw9VMhXvT9OIgP-BUwGFt27cAAxmZCyVObQ_0&s",
                              shape: BoxShape.rectangle,
                              color: Colors.red,
                              child: Center(
                                child: Texts(text: "Live", color: Colors.white),
                              ),
                            ),
                            Texts(
                              text: "username",
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Texts(
                      text: "Activity",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "ajdhasjvhbhsbkjfj",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: SizedBox(
                    width: size.width * 0.26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CommmonIconButton(
                          color: Colors.red,
                          child: Texts(text: "Follow", color: Colors.white),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "username from your contacts on tiktok",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "ajdhasjvhbhsbkjfj",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: SizedBox(
                    width: size.width * 0.26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CommmonIconButton(
                          color: Colors.red,
                          child: Texts(text: "Follow", color: Colors.white),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "username from your contacts on tiktok",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Texts(
                      text: "Message",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "where are you from?",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: Texts(
                      text: "22/5/2015", color: Colors.black.withOpacity(0.5)),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "chachu",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "where are you from?",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: Texts(
                      text: "22/5/2015", color: Colors.black.withOpacity(0.5)),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "chachu",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "where are you from?",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: Texts(
                      text: "22/5/2015", color: Colors.black.withOpacity(0.5)),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "chachu",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                height: 1,
              ),
              Container(
                color: Colors.white,
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "where are you from?",
                      color: Colors.black.withOpacity(0.5)),
                  trailing: Texts(
                      text: "22/5/2015", color: Colors.black.withOpacity(0.5)),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "chachu",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
