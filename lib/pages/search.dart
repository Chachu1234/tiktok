import 'package:flutter/material.dart';
import 'package:woff/pages/profile/common/for_profile.dart';

import '../widgets/Commons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.3),
        leading: const Icon(
          Icons.person_add_alt_1_outlined,
          color: Colors.white,
          size: 25,
        ),
        actions: const [Icon(Icons.stacked_bar_chart_rounded)],
        title: Container(
          margin: const EdgeInsets.only(top: 0),
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(13)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.8),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'find freinds...',
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
                  border: InputBorder.none),
            ),
          ),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: Colors.black,
          width: size.width,
          height: size.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width,
                height: 60,
                child: ListTile(
                  subtitle: Texts(
                      text: "tiktok from your contacts",
                      color: Colors.white.withOpacity(0.5)),
                  trailing: SizedBox(
                    width: size.width * 0.26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CommmonIconButton(
                          color: Colors.red,
                          child: Texts(
                              text: "Follow",
                              color: Color.fromARGB(255, 37, 16, 16)),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/15/85/23/240_F_115852367_E6iIYA8OxHDmRhjw7kOq4uYe4t440f14.jpg"),
                  ),
                  title: const Texts(
                    text: "username",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
