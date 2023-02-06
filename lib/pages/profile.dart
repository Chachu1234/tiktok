import 'package:flutter/material.dart';
import 'package:woff/pages/profile/common/for_profile.dart';
import 'package:woff/widgets/Commons.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add_alt_rounded,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          Row(
            children: [
              TextButton(
                  style: styleButton(Colors.grey.withOpacity(0.3)),
                  onPressed: () {},
                  child: const Texts(
                    text: "+ Add name",
                    color: Colors.black,
                  )),
              // ignore: prefer_const_constructors
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          const Icon(
            Icons.precision_manufacturing,
            color: Colors.black,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.menu,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Circilewidget(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHhvWhbP8LplFQ3gjrnbfv6wrEMP3orU_p2CcVV48f&s",
                    // ignore: prefer_const_constructors
                    child: Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )))),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Texts(
                    text: "@chadeifnndvbb",
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  Icon(
                    Icons.filter_center_focus_sharp,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: styleButton(Colors.white),
                    onPressed: () {},
                    child: Column(
                      children: [
                        const Texts(
                          text: "0",
                          color: Colors.black,
                          fontSize: 22,
                        ),
                        Texts(
                          text: "Followeing",
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    style: styleButton(Colors.white),
                    onPressed: () {},
                    child: Column(
                      children: [
                        const Texts(
                          text: "0",
                          color: Colors.black,
                          fontSize: 22,
                        ),
                        Texts(
                          text: "Followers",
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: styleButton(Colors.white),
                    child: Column(
                      children: [
                        const Texts(
                          text: "0",
                          color: Colors.black,
                          fontSize: 22,
                        ),
                        Texts(
                          text: "Likes",
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      style: styleButton(Colors.grey.withOpacity(0.3)),
                      child: const Texts(
                        text: "Edit Profile",
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: styleButton(Colors.grey.withOpacity(0.3)),
                      child: const Icon(
                        Icons.replay_rounded,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    style: styleButton(Colors.grey.withOpacity(0.3)),
                    child: const Texts(
                      text: "+ Add Bio",
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // const Tabbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.restaurant_menu_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  Icons.lock_outline,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  Icons.bookmark_add_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                Icon(
                  Icons.favorite_outline,
                  size: 20,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Texts(
                      text: "share a throwback photos",
                      color: Colors.black,
                      fontSize: 18),
                  // Text("share a throwback photos",
                  //     style: TextStyle(color: Colors.black, fontSize: 20)),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: styleButton(Colors.red),
                    child: const Texts(
                      text: "Upload ",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
